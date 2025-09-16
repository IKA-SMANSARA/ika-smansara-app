// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class Constants {
  // APP FLAVOR
  static const String? appFlavor =
      String.fromEnvironment('FLUTTER_APP_FLAVOR') != ''
          ? String.fromEnvironment('FLUTTER_APP_FLAVOR')
          : null;
  static const DEVELOPMENT = 'development';
  static const STAGING = 'staging';
  static const PRODUCTION = 'production';
  // Logger
  static final logger = Logger(
    level: _getLogLevel(),
  );
  static const BLANK_STRING = '';

  static Level _getLogLevel() {
    // In test environment, only show warnings and errors
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return Level.warning;
    }
    // In debug mode, show all logs
    if (kDebugMode) {
      return Level.debug;
    }
    // In release mode, only show warnings and errors
    return Level.warning;
  }
}
