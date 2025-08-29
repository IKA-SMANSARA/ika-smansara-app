import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_url_webview_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/save_payment_transaction_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WebviewSnapPage extends ConsumerWidget {
  final TransactionRequest transactionRequest;

  const WebviewSnapPage(this.transactionRequest, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncWebViewUrl = ref.watch(
      getUrlWebviewProvider(
        transactionRequest: transactionRequest,
      ),
    );

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: asyncWebViewUrl.when(
          data: (data) {
            // Check if redirect URL is valid
            final redirectUrl = data?.redirectUrl;
            if (redirectUrl == null || redirectUrl.isEmpty) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.red,
                    ),
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
                useHybridComposition: true,
                allowsInlineMediaPlayback: true,
              ),
              onDownloadStartRequest: (controller, request) async {
                final taskId = await FlutterDownloader.enqueue(
                  url: request.url.toString(),
                  savedDir: '/storage/emulated/0/Download',
                  saveInPublicStorage: true,
                );

                Constants.logger.d(taskId);
              },
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                Constants.logger.w("request url ${navigationAction.request.url}");
                RegExp pattern = RegExp(r"/pdf$");
                bool isPdfUrl =
                    pattern.hasMatch(navigationAction.request.url.toString());

                if (isPdfUrl) {
                  final taskId = await FlutterDownloader.enqueue(
                    url: navigationAction.request.url.toString(),
                    savedDir: '/storage/emulated/0/Download',
                  );

                  Constants.logger.d(taskId);
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
                        transactionRequest: transactionRequest,
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
                const Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Colors.red,
                ),
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
                    // Refresh the provider to retry
                    ref.invalidate(getUrlWebviewProvider);
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
  }
}