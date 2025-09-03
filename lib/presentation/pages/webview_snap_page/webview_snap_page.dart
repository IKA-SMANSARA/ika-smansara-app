import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

// WebView Snap Page - Enhanced QR Code Download Handler
//
// This file implements QRIS/QR code download functionality for Midtrans Snap payments.
// Key improvements based on Flutter WebView download best practices:
//
// 1. Enhanced JavaScript blob handling with better error detection
// 2. Improved fallback mechanisms for JavaScript execution
// 3. Better base64 validation and cleaning
// 4. MIME type detection and appropriate file extensions
// 5. QRIS-specific download detection
// 6. Data URL handling for direct QR code downloads
// 7. Unique filename generation to avoid file conflicts
// 8. Comprehensive error handling and logging
// 9. Alternative download methods when blob access fails (XHR network error)
// 10. Screenshot capture as fallback for QR code extraction

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_url_webview_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/save_payment_transaction_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:open_file/open_file.dart';

class WebviewSnapPage extends ConsumerStatefulWidget {
  final TransactionRequest transactionRequest;

  const WebviewSnapPage(this.transactionRequest, {super.key});

  @override
  ConsumerState<WebviewSnapPage> createState() => _WebviewSnapPageState();
}

class _WebviewSnapPageState extends ConsumerState<WebviewSnapPage> {
  InAppWebViewController? webViewController;
  final ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();
    _setupFlutterDownloaderCallback();
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  void _setupFlutterDownloaderCallback() {
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];
      Constants.logger.d("Download ID: $id, Status: $status, Progress: $progress");
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort? send = IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }



  Future<void> _downloadNormalLink(DownloadStartRequest downloadStartRequest) async {
    try {
      Constants.logger.d('Starting normal download for: ${downloadStartRequest.url}');

      String downloadDir;
      if (defaultTargetPlatform == TargetPlatform.android) {
        final directory = await getExternalStorageDirectory();
        downloadDir = directory?.path ?? '/storage/emulated/0/Download';
        Constants.logger.d('Using Android download directory: $downloadDir');
      } else {
        final directory = await getApplicationDocumentsDirectory();
        downloadDir = directory.path;
        Constants.logger.d('Using iOS download directory: $downloadDir');
      }

      // Ensure download directory exists
      final dir = Directory(downloadDir);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
        Constants.logger.d('Created download directory: $downloadDir');
      }

      final taskId = await FlutterDownloader.enqueue(
        url: downloadStartRequest.url.toString(),
        savedDir: downloadDir,
        fileName: downloadStartRequest.suggestedFilename,
        openFileFromNotification: true,
      );

      if (taskId != null) {
        showDownloadSnackBar(context, 'Download started: ${downloadStartRequest.suggestedFilename}');
        Constants.logger.i('Download task created: $taskId for ${downloadStartRequest.url}');
      } else {
        showDownloadSnackBar(context, 'Failed to start download');
        Constants.logger.e('Failed to create download task');
      }

    } catch (e) {
      showDownloadSnackBar(context, 'Download failed');
      Constants.logger.e('Normal download error: $e');
    }
  }

  Future<void> _downloadBlobLink(InAppWebViewController controller, DownloadStartRequest downloadStartRequest) async {
    try {
      Constants.logger.d('Starting blob download for: ${downloadStartRequest.url}');

      Constants.logger.d('WebView controller is available');

      // Validate blob URL
      final url = downloadStartRequest.url.toString();
      if (!url.startsWith('blob:')) {
        showDownloadSnackBar(context, 'Invalid blob URL format');
        Constants.logger.e('Invalid blob URL: $url');
        return;
      }

      Constants.logger.d('Blob URL is valid: $url');

      dynamic result;
      bool jsExecuted = false;

      // Try multiple JavaScript execution methods
      try {
        Constants.logger.d('Attempting callAsyncJavaScript...');
        final jsResult = await controller.callAsyncJavaScript(
          functionBody: _blobHandlerJavascript(downloadStartRequest.url.toString())
        ).timeout(
          const Duration(seconds: 25),
          onTimeout: () {
            Constants.logger.e('callAsyncJavaScript timeout');
            throw TimeoutException('JavaScript timeout');
          },
        );
        result = jsResult?.value; // Access the value property
        jsExecuted = true;
        Constants.logger.d('callAsyncJavaScript succeeded');
      } catch (jsError) {
        Constants.logger.w('callAsyncJavaScript failed: $jsError');

        // Fallback to evaluateJavascript
        try {
          Constants.logger.d('Attempting evaluateJavascript fallback...');
          result = await controller.evaluateJavascript(
            source: _blobHandlerJavascript(downloadStartRequest.url.toString())
          ).timeout(const Duration(seconds: 25));
          jsExecuted = true;
          Constants.logger.d('evaluateJavascript fallback succeeded');
        } catch (fallbackError) {
          Constants.logger.e('Both JavaScript methods failed: $fallbackError');

          // Show detailed error message
          showDownloadErrorSnackBar(
            context,
            'JavaScript execution failed',
            details: 'Trying alternative download method...'
          );

          // Try alternative approach: inject script to handle download differently
          await _tryAlternativeBlobDownload(controller, downloadStartRequest);
          return;
        }
      }

      if (!jsExecuted) {
        showDownloadSnackBar(context, 'Failed to execute JavaScript');
        Constants.logger.e('JavaScript execution failed');
        return;
      }

      Constants.logger.d('JavaScript result type: ${result.runtimeType}');
      Constants.logger.d('JavaScript result: $result');

      if (result == null) {
        Constants.logger.w('JavaScript result is null, trying alternative method');
        await _tryAlternativeBlobDownload(controller, downloadStartRequest);
        return;
      }

      // Handle different result types
      if (result is Map) {
        Constants.logger.d('Result is Map with keys: ${result.keys}');

        if (result.containsKey('error') && result['error'] != null) {
          final errorMsg = result['error'].toString();
          Constants.logger.w('JavaScript error: $errorMsg, trying alternative method');

          // If it's a network error, try alternative method
          if (errorMsg.contains('Network error') || errorMsg.contains('cannot fetch blob')) {
            Constants.logger.w('Network error detected, trying alternative method');
            showDownloadErrorSnackBar(
              context,
              'Network error occurred',
              details: 'Trying alternative download method...'
            );
            await _tryAlternativeBlobDownload(controller, downloadStartRequest);
            return;
          }

          showDownloadErrorSnackBar(context, 'Failed to download QRIS', details: errorMsg);
          return;
        }

        if (result.containsKey('success') && result['success'] == true) {
          final data = result['data'];
          final type = result['type'] ?? 'image/png';

          if (data != null && data is String && data.isNotEmpty) {
            Constants.logger.d('Processing base64 data, length: ${data.length}, type: $type');

            // Determine file extension based on MIME type
            String fileExtension = 'png';
            if (type.contains('jpeg') || type.contains('jpg')) {
              fileExtension = 'jpg';
            } else if (type.contains('svg')) {
              fileExtension = 'svg';
            }

            await _createFileFromBase64(
              data,
              downloadStartRequest.suggestedFilename ??
                  'qris_payment_${DateTime.now().millisecondsSinceEpoch}.$fileExtension',
            );
            return;
          } else {
            showDownloadSnackBar(context, 'QRIS data is empty or invalid');
            Constants.logger.e('Invalid or empty data in result: $data');
            return;
          }
        }

        // If result is a Map but doesn't have expected structure
        showDownloadSnackBar(context, 'Unexpected response format');
        Constants.logger.e('Unexpected Map result structure: $result');
        return;
      }

      // Handle string result (legacy support)
      if (result is String && result.isNotEmpty) {
        Constants.logger.d('Processing string result, length: ${result.length}');
        await _createFileFromBase64(
          result,
          downloadStartRequest.suggestedFilename ??
              'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png',
        );
        return;
      }

      // If we reach here, result format is unexpected
      showDownloadSnackBar(context, 'Failed to process download response');
      Constants.logger.e('Unexpected result format: ${result.runtimeType} - $result');

    } catch (e) {
      showDownloadSnackBar(context, 'Failed to download QRIS');
      Constants.logger.e('Blob download error: $e');
    }
  }

  // Handle data URL downloads
  Future<void> _handleDataUrlDownload(String dataUrl, String? suggestedFilename) async {
    try {
      Constants.logger.d('Processing data URL download: $dataUrl');

      // Parse data URL format: data:[<mime type>][;charset=<charset>][;base64],<encoded data>
      final dataUriParts = dataUrl.split(',');
      if (dataUriParts.length < 2) {
        showDownloadSnackBar(context, 'Invalid data URL format');
        return;
      }

      final header = dataUriParts[0]; // Contains MIME type info
      final data = dataUriParts[1]; // The actual data

      // Extract MIME type
      String mimeType = 'image/png'; // default
      if (header.contains(';')) {
        final mimeParts = header.split(';');
        if (mimeParts[0].startsWith('data:')) {
          mimeType = mimeParts[0].substring(5); // Remove 'data:' prefix
        }
      }

      // Determine file extension
      String fileExtension = 'png';
      if (mimeType.contains('jpeg') || mimeType.contains('jpg')) {
        fileExtension = 'jpg';
      } else if (mimeType.contains('svg')) {
        fileExtension = 'svg';
      } else if (mimeType.contains('gif')) {
        fileExtension = 'gif';
      }

      // Generate filename
      final filename = suggestedFilename ??
          'qris_payment_${DateTime.now().millisecondsSinceEpoch}.$fileExtension';

      Constants.logger.d('Data URL MIME type: $mimeType, extension: $fileExtension');

      await _createFileFromBase64(data, filename);

    } catch (e) {
      Constants.logger.e('Data URL download error: $e');
      showDownloadSnackBar(context, 'Failed to process data URL download');
    }
  }

  // Alternative method for blob download when JavaScript fails
  Future<void> _tryAlternativeBlobDownload(InAppWebViewController controller, DownloadStartRequest downloadStartRequest) async {
    try {
      Constants.logger.d('Trying alternative blob download method');

      // Method 1: Try to capture QR code via screenshot (if it's visible)
      final screenshotResult = await controller.takeScreenshot();
      if (screenshotResult != null && screenshotResult.isNotEmpty) {
        Constants.logger.d('Screenshot captured, size: ${screenshotResult.length}');

        // Convert screenshot to base64 and save
        final base64Screenshot = base64Encode(screenshotResult);
        await _createFileFromBase64(
          base64Screenshot,
          'qris_screenshot_${DateTime.now().millisecondsSinceEpoch}.png',
        );
        return;
      }

      // Method 2: Try to inject a script that creates a downloadable link
      const alternativeScript = '''
        (function() {
          try {
            // Find QR code image elements
            const qrImages = document.querySelectorAll('img[src*="qr"], img[alt*="qr"], img[alt*="QR"], canvas, svg');
            if (qrImages.length > 0) {
              const qrElement = qrImages[0];

              // Try to get image data
              if (qrElement.tagName === 'IMG') {
                return {type: 'image', src: qrElement.src, alt: qrElement.alt};
              } else if (qrElement.tagName === 'CANVAS') {
                return {type: 'canvas', data: qrElement.toDataURL()};
              } else if (qrElement.tagName === 'SVG') {
                const serializer = new XMLSerializer();
                return {type: 'svg', data: serializer.serializeToString(qrElement)};
              }
            }

            // Look for download buttons or links
            const downloadButtons = document.querySelectorAll('button, a[href*="download"], a[href*="qr"]');
            if (downloadButtons.length > 0) {
              const button = downloadButtons[0];
              button.click();
              return {type: 'clicked', element: button.tagName};
            }

            return {error: 'No QR code elements found'};
          } catch (error) {
            return {error: 'Alternative method failed: ' + error.toString()};
          }
        })();
      ''';

      final altResult = await controller.callAsyncJavaScript(functionBody: alternativeScript);
      Constants.logger.d('Alternative script result: $altResult');

      if (altResult != null) {
        // Access the value property of CallAsyncJavaScriptResult
        final resultValue = altResult.value;
        Constants.logger.d('Alternative script result value: $resultValue');

        if (resultValue != null && resultValue is Map) {
          final resultMap = resultValue;
          if (resultMap['type'] == 'image' && resultMap['src'] != null) {
            // Handle regular image URL
            final imageUrl = resultMap['src'];
            if (imageUrl.startsWith('data:')) {
              // Data URL
              final dataParts = imageUrl.split(',');
              if (dataParts.length >= 2) {
                await _createFileFromBase64(
                  dataParts[1],
                  'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png',
                );
              }
            } else {
              // Regular URL - download it
              await _downloadNormalLink(DownloadStartRequest(
                url: WebUri(imageUrl),
                suggestedFilename: 'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png',
                mimeType: 'image/png',
                contentLength: 0,
              ));
            }
          } else if (resultMap['type'] == 'canvas' && resultMap['data'] != null) {
            // Canvas data URL
            final dataUrl = resultMap['data'];
            final dataParts = dataUrl.split(',');
            if (dataParts.length >= 2) {
              await _createFileFromBase64(
                dataParts[1],
                'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png',
              );
            }
          } else if (resultMap['type'] == 'svg' && resultMap['data'] != null) {
            // SVG data
            final svgData = resultMap['data'];
            await _createFileFromBase64(
              base64Encode(utf8.encode(svgData)),
              'qris_payment_${DateTime.now().millisecondsSinceEpoch}.svg',
            );
          } else if (resultMap['type'] == 'clicked') {
            Constants.logger.d('Download button clicked via alternative method');
            showDownloadSnackBar(context, 'Download initiated');
          } else if (resultMap['error'] != null) {
            Constants.logger.w('Alternative method error: ${resultMap['error']}');
          }
        }
      }

    } catch (e) {
      Constants.logger.e('Alternative blob download failed: $e');
      showDownloadSnackBar(context, 'QRIS download failed - please try manual download');
    }
  }

  String _blobHandlerJavascript(String url) {
    return '''
      (async function() {
        try {
          console.log("Starting blob download for:", "$url");

          // Method 1: Try direct blob access first
          try {
            console.log("Method 1: Direct blob access");
            console.log("Attempting to fetch blob URL:", "$url");

            const response = await fetch("$url");
            console.log("Fetch response status:", response.status);
            console.log("Fetch response ok:", response.ok);

            if (!response.ok) {
              throw new Error("Fetch failed with status: " + response.status + " " + response.statusText);
            }

            const blob = await response.blob();
            console.log("Blob received via fetch, size:", blob.size, "type:", blob.type);
            console.log("Blob URL successfully accessed");

            if (blob.size === 0) {
              throw new Error("Empty blob received");
            }

            return await new Promise((resolve) => {
              var reader = new FileReader();
              reader.onload = function() {
                console.log("FileReader onload success");
                var base64data = reader.result;
                var base64ContentArray = base64data.split(",");
                if (base64ContentArray.length >= 2) {
                  var decodedFile = base64ContentArray[1];
                  console.log("Base64 conversion successful, length:", decodedFile.length);
                  resolve({success: true, data: decodedFile, size: blob.size, type: blob.type});
                } else {
                  resolve({error: "Invalid base64 format"});
                }
              };

              reader.onerror = function() {
                console.error("FileReader error");
                resolve({error: "FileReader failed"});
              };

              reader.readAsDataURL(blob);
            });
          } catch (fetchError) {
            console.warn("Method 1 failed, trying Method 2:", fetchError);

            // Method 2: Try XHR with CORS handling
            console.log("Method 2: XHR with CORS handling");
            return await new Promise((resolve) => {
              var xhr = new XMLHttpRequest();

              // Try with different approaches
              try {
                console.log("Method 2: Attempting XHR open for:", "$url");
                xhr.open("GET", "$url", true);
                console.log("XHR open successful");
              } catch (openError) {
                console.error("XHR open failed:", openError);
                console.error("This usually indicates CORS or security restrictions");
                resolve({error: "Cannot open blob URL: " + openError.toString()});
                return;
              }

              xhr.responseType = 'blob';

              xhr.onload = function(e) {
                console.log("XHR onload, status:", this.status);
                if (this.status == 200) {
                  var blob = this.response;
                  console.log("Blob received via XHR, size:", blob.size, "type:", blob.type);

                  if (blob.size === 0) {
                    resolve({error: "Empty blob received"});
                    return;
                  }

                  var reader = new FileReader();
                  reader.onload = function() {
                    console.log("FileReader onload success");
                    var base64data = reader.result;
                    var base64ContentArray = base64data.split(",");
                    if (base64ContentArray.length >= 2) {
                      var decodedFile = base64ContentArray[1];
                      console.log("Base64 conversion successful, length:", decodedFile.length);
                      resolve({success: true, data: decodedFile, size: blob.size, type: blob.type});
                    } else {
                      resolve({error: "Invalid base64 format"});
                    }
                  };

                  reader.onerror = function() {
                    console.error("FileReader error");
                    resolve({error: "FileReader failed"});
                  };

                  reader.readAsDataURL(blob);
                } else {
                  console.error("XHR failed with status:", this.status);
                  resolve({error: "HTTP " + this.status + " error"});
                }
              };

              xhr.onerror = function() {
                console.error("XHR network error");
                resolve({error: "Network error - cannot fetch blob"});
              };

              xhr.ontimeout = function() {
                console.error("XHR timeout");
                resolve({error: "Request timeout"});
              };

              xhr.timeout = 10000; // 10 second timeout
              xhr.send();
            });
          }
        } catch (error) {
          console.error("JavaScript exception:", error);
          return {error: "JavaScript error: " + error.toString()};
        }
      })();
    ''';
  }

  Future<void> _createFileFromBase64(String base64content, String fileName) async {
    try {
      Constants.logger.d('Processing $fileName with ${base64content.length} characters');

      if (base64content.isEmpty) {
        showDownloadSnackBar(context, 'QRIS data is empty');
        Constants.logger.e('Base64 content is empty');
        return;
      }

      // Clean base64 content - remove whitespace and invalid characters
      String cleanBase64 = base64content
          .replaceAll('\n', '')
          .replaceAll('\r', '')
          .replaceAll(' ', '')
          .trim();

      // Validate base64 format
      if (!RegExp(r'^[A-Za-z0-9+/]*={0,2}$').hasMatch(cleanBase64)) {
        showDownloadSnackBar(context, 'Invalid QRIS data format');
        Constants.logger.e('Invalid base64 format detected');
        return;
      }

      // Ensure proper padding
      while (cleanBase64.length % 4 != 0) {
        cleanBase64 += '=';
      }

      Uint8List bytes;
      try {
        bytes = base64Decode(cleanBase64);
        Constants.logger.d('Decoded ${bytes.length} bytes');
      } catch (decodeError) {
        showDownloadSnackBar(context, 'Failed to decode QRIS data');
        Constants.logger.e('Base64 decode error: $decodeError');
        return;
      }

      if (bytes.isEmpty) {
        showDownloadSnackBar(context, 'Failed to decode QRIS data');
        Constants.logger.e('Decoded bytes is empty');
        return;
      }

      // Validate minimum file size (QR code should be at least a few KB)
      if (bytes.length < 1024) {
        showDownloadSnackBar(context, 'QRIS data appears to be too small');
        Constants.logger.w('Decoded file is very small: ${bytes.length} bytes');
      }

      String downloadDir;
      if (defaultTargetPlatform == TargetPlatform.android) {
        final directory = await getExternalStorageDirectory();
        downloadDir = directory?.path ?? '/storage/emulated/0/Download';
        Constants.logger.d('Using Android download directory: $downloadDir');
      } else {
        final directory = await getApplicationDocumentsDirectory();
        downloadDir = directory.path;
        Constants.logger.d('Using iOS download directory: $downloadDir');
      }

      // Ensure download directory exists
      final dir = Directory(downloadDir);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
        Constants.logger.d('Created download directory: $downloadDir');
      }

      // Ensure unique filename to avoid conflicts
      String uniqueFileName = fileName;
      int counter = 1;
      while (File("$downloadDir/$uniqueFileName").existsSync()) {
        final nameParts = fileName.split('.');
        if (nameParts.length > 1) {
          uniqueFileName = '${nameParts[0]}_$counter.${nameParts[1]}';
        } else {
          uniqueFileName = '${fileName}_$counter';
        }
        counter++;
      }

      final file = File("$downloadDir/$uniqueFileName");
      await file.writeAsBytes(bytes);

      Constants.logger.i('File saved successfully: ${file.path}');

      // Show success message
      showDownloadSnackBar(context, 'QRIS saved as $uniqueFileName');

      // Try to open the file
      try {
        final result = await OpenFile.open(file.path);
        if (result.type == ResultType.done) {
          Constants.logger.i('File opened successfully: ${file.path}');
        } else {
          Constants.logger.w('File open result: ${result.message}');
        }
      } catch (e) {
        Constants.logger.e('Failed to open file: $e');
        // Don't show error for file opening failure as file is already saved
      }

    } catch (e) {
      showDownloadSnackBar(context, 'Failed to save QRIS file');
      Constants.logger.e('File creation error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        var asyncWebViewUrl = ref.watch(
          getUrlWebviewProvider(
            transactionRequest: widget.transactionRequest,
          ),
        );

        return PopScope(
          canPop: false,
          child: Scaffold(
            body: asyncWebViewUrl.when(
              data: (data) {
                final redirectUrl = data?.redirectUrl;
                if (redirectUrl == null || redirectUrl.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, size: 64, color: Colors.red),
                        SizedBox(height: 16),
                        Text(
                          'Invalid Payment URL',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Please check your email format and try again',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: WebUri(redirectUrl),
                  ),
                  initialSettings: InAppWebViewSettings(
                    useShouldOverrideUrlLoading: true,
                    mediaPlaybackRequiresUserGesture: true,
                    useOnDownloadStart: true,
                    javaScriptCanOpenWindowsAutomatically: true,
                    javaScriptEnabled: true,
                  ),
                  onWebViewCreated: (controller) {
                    webViewController = controller;
                  },
                  onPermissionRequest: (controller, request) async {
                    return PermissionResponse(
                      resources: request.resources,
                      action: PermissionResponseAction.GRANT,
                    );
                  },
                  onDownloadStartRequest: (controller, downloadStartRequest) async {
                    try {
                      Constants.logger.d("onDownloadStart triggered");
                      Constants.logger.d("Download URL: ${downloadStartRequest.url}");
                      Constants.logger.d("Suggested filename: ${downloadStartRequest.suggestedFilename}");
                      Constants.logger.d("MIME type: ${downloadStartRequest.mimeType}");

                      final url = downloadStartRequest.url.toString();

                      // Check for QRIS-related downloads
                      final isQrisDownload = url.contains('qris') ||
                                             url.contains('qr') ||
                                             url.contains('payment') ||
                                             downloadStartRequest.suggestedFilename?.contains('qris') == true ||
                                             downloadStartRequest.suggestedFilename?.contains('qr') == true ||
                                             downloadStartRequest.suggestedFilename?.contains('payment') == true;

                      if (isQrisDownload) {
                        Constants.logger.d("Detected QRIS download, prioritizing blob handling");
                      }

                      // Handle different download types
                      if (url.startsWith('blob:')) {
                        Constants.logger.d("Processing blob download");
                        await _downloadBlobLink(controller, downloadStartRequest);
                      } else if (url.startsWith('data:')) {
                        Constants.logger.d("Processing data URL download");
                        await _handleDataUrlDownload(url, downloadStartRequest.suggestedFilename);
                      } else if (!url.contains('blob') && !isQrisDownload) {
                        Constants.logger.d("Processing normal download");
                        await _downloadNormalLink(downloadStartRequest);
                      } else {
                        // Fallback: treat as blob for QRIS downloads
                        Constants.logger.d("Processing as blob download (fallback for QRIS)");
                        await _downloadBlobLink(controller, downloadStartRequest);
                      }
                    } catch (e, stackTrace) {
                      Constants.logger.e("Error in onDownloadStartRequest: $e");
                      Constants.logger.e("Stack trace: $stackTrace");
                      showDownloadSnackBar(context, "Download failed: ${e.toString()}");
                    }
                  },
                  onConsoleMessage: (controller, consoleMessage) {
                    log('Console: ${consoleMessage.message}');
                  },
                  onReceivedError: (controller, request, error) {
                    log('Error: ${error.description}');
                  },
                   shouldOverrideUrlLoading: (controller, navigationAction) async {
                     final url = navigationAction.request.url.toString();
                     Constants.logger.d("Navigation URL: $url");

                     // Handle blob URLs that might appear as navigation
                     if (url.startsWith('blob:')) {
                       Constants.logger.d('Handling blob navigation');

                       // Check if this is likely a QRIS download
                       final isQrisDownload = url.contains('qris') ||
                                              url.contains('qr') ||
                                              url.contains('payment');

                       String suggestedFilename = isQrisDownload
                           ? 'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png'
                           : 'download_${DateTime.now().millisecondsSinceEpoch}.png';

                       await _downloadBlobLink(controller, DownloadStartRequest(
                         url: WebUri(url),
                         suggestedFilename: suggestedFilename,
                         mimeType: 'image/png',
                         contentLength: 0,
                       ));
                       return NavigationActionPolicy.CANCEL;
                     }

                     // Handle data URLs that might contain QR codes
                     if (url.startsWith('data:')) {
                       Constants.logger.d('Handling data URL navigation');
                       await _handleDataUrlDownload(url, 'qris_payment_${DateTime.now().millisecondsSinceEpoch}.png');
                       return NavigationActionPolicy.CANCEL;
                     }

                     if (navigationAction.request.url?.host == 'example.com') {
                       var statusPayment = navigationAction
                           .request.url?.queryParametersAll.values.last.first;

                       Constants.logger.d(statusPayment);

                       if (navigationAction
                               .request.url?.queryParametersAll.values.last.first ==
                           'capture') {
                         statusPayment = 'success';
                       } else if (navigationAction
                               .request.url?.queryParametersAll.values.last.first ==
                           'settlement') {
                         statusPayment = 'success';
                       } else {
                         statusPayment = navigationAction
                             .request.url?.queryParametersAll.values.last.first;
                       }

                       ref
                           .read(savePaymentTransactionProvider.notifier)
                           .postPaymentTransaction(
                             statusPayment: statusPayment ?? '',
                             transactionRequest: widget.transactionRequest,
                           );

                       return NavigationActionPolicy.CANCEL;
                     }
                     return NavigationActionPolicy.ALLOW;
                   },
                );
              },
              error: (error, stackTrace) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    const Text(
                      'Payment Error',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString().contains('email')
                          ? 'Invalid email format. Please use a valid email address.'
                          : 'Failed to load payment page. Please try again.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.invalidate(getUrlWebviewProvider(
                          transactionRequest: widget.transactionRequest,
                        ));
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              loading: () => Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.amber,
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}