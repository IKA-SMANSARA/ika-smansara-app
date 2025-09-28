import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ika_smansara/utils/constants.dart';
/// Helper class for scoped storage operations on Android
/// Replaces the need for MANAGE_EXTERNAL_STORAGE permission
class ScopedStorageHelper {
  /// Request storage permissions for Android
  static Future<bool> requestStoragePermissions() async {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return true; // iOS doesn't need explicit permission for app documents
    }

    try {
      // Request storage permission for accessing Downloads folder
      final storageStatus = await Permission.storage.request();
      if (storageStatus.isGranted) {
        Constants.logger.d('Storage permission granted');
        return true;
      }

      Constants.logger.w('Storage permission denied');
      return false;
    } catch (e) {
      Constants.logger.e('Error requesting storage permissions: $e');
      return false;
    }
  }

  /// Save file to Downloads directory using scoped storage
  static Future<String?> saveToDownloads(
    Uint8List bytes,
    String fileName,
  ) async {
    try {
      Constants.logger.d('Saving file to downloads: $fileName');
      if (defaultTargetPlatform == TargetPlatform.android) {
        // For Android, use app-specific directory in Downloads
        final appDir = await getExternalStorageDirectory();
        if (appDir != null) {
          final downloadDir = Directory('${appDir.path}/Download');
          if (!await downloadDir.exists()) {
            await downloadDir.create(recursive: true);
          }
          final file = File('${downloadDir.path}/$fileName');
          await file.writeAsBytes(bytes);
          Constants.logger.i('File saved to: ${file.path}');
          return file.path;
        } else {
          // Fallback directory
          final fallbackDir = Directory('/storage/emulated/0/Android/data/com.ikasmansara.ika_smansara/files/Download');
          if (!await fallbackDir.exists()) {
            await fallbackDir.create(recursive: true);
          }
          final file = File('${fallbackDir.path}/$fileName');
          await file.writeAsBytes(bytes);
          Constants.logger.i('File saved to fallback: ${file.path}');
          return file.path;
        }
      } else {
        // For iOS and other platforms, use app documents directory
        final docsDir = await getApplicationDocumentsDirectory();
        final file = File('${docsDir.path}/$fileName');
        await file.writeAsBytes(bytes);
        Constants.logger.i('File saved to: ${file.path}');
        return file.path;
      }
    } catch (e) {
      Constants.logger.e('Failed to save file to downloads: $e');
      return null;
    }
  }
  /// Save screenshot to accessible Downloads/IKA Smansara folder
  static Future<String?> saveScreenshot(
    Uint8List screenshotData,
    String fileName,
  ) async {
    try {
      Constants.logger.d('Saving screenshot to Downloads/IKA Smansara: $fileName');
      if (defaultTargetPlatform == TargetPlatform.android) {
        // Request storage permissions first
        final hasPermission = await requestStoragePermissions();
        if (!hasPermission) {
          Constants.logger.w('Storage permissions not granted, cannot save to Downloads');
        }

        // Try to save to Downloads/IKA Smansara first (accessible location)
        try {
          final downloadsDir = Directory('/storage/emulated/0/Download');
          final ikaDir = Directory('${downloadsDir.path}/IKA Smansara');
          final screenshotsDir = Directory('${ikaDir.path}/Screenshots');

          // Create directories if they don't exist
          if (!await downloadsDir.exists()) {
            await downloadsDir.create(recursive: true);
          }
          if (!await ikaDir.exists()) {
            await ikaDir.create(recursive: true);
          }
          if (!await screenshotsDir.exists()) {
            await screenshotsDir.create(recursive: true);
          }

          final file = File('${screenshotsDir.path}/$fileName');
          await file.writeAsBytes(screenshotData);
          Constants.logger.i('Screenshot saved to Downloads/IKA Smansara/Screenshots: ${file.path}');
          return file.path;
        } catch (e) {
          Constants.logger.w('Failed to save to Downloads, trying app-specific directory: $e');

          // Fallback to app-specific directory
          final appDir = await getExternalStorageDirectory();
          if (appDir != null) {
            final ikaDir = Directory('${appDir.path}/IKA Smansara');
            final screenshotsDir = Directory('${ikaDir.path}/Screenshots');

            if (!await ikaDir.exists()) {
              await ikaDir.create(recursive: true);
            }
            if (!await screenshotsDir.exists()) {
              await screenshotsDir.create(recursive: true);
            }

            final file = File('${screenshotsDir.path}/$fileName');
            await file.writeAsBytes(screenshotData);
            Constants.logger.i('Screenshot saved to app-specific fallback: ${file.path}');
            return file.path;
          }
        }
      } else {
        // For iOS and other platforms, use app documents directory
        final docsDir = await getApplicationDocumentsDirectory();
        final ikaDir = Directory('${docsDir.path}/IKA Smansara');
        final screenshotsDir = Directory('${ikaDir.path}/Screenshots');
        if (!await ikaDir.exists()) {
          await ikaDir.create(recursive: true);
        }
        if (!await screenshotsDir.exists()) {
          await screenshotsDir.create(recursive: true);
        }
        final file = File('${screenshotsDir.path}/$fileName');
        await file.writeAsBytes(screenshotData);
        Constants.logger.i('Screenshot saved to iOS documents: ${file.path}');
        return file.path;
      }
    } catch (e) {
      Constants.logger.e('Failed to save screenshot: $e');
      return null;
    }

    return null;
  }
  /// Generate unique filename to avoid conflicts
  static String generateUniqueFileName(String baseFileName) {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final extension = baseFileName.split('.').last;
    final nameWithoutExt = baseFileName.split('.').first;
    return '${nameWithoutExt}_$timestamp.$extension';
  }
}