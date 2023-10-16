import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

void keyboardDismiss(BuildContext context) {
  return WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
}

// Chopper already uses the Logger package.
// Printing the logs to the console requires
// the following setup.
void setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    Constants.logger.d('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

String getRandomOrderIdNumber(String? name) {
  final merchantOrderId =
      'IKA-SMANSARA-${name?.trim()}-${DateTime.now().millisecondsSinceEpoch}';
  return merchantOrderId;
}

String routeWithSession() {
  final checkUserSessionStatusUseCase = getIt<CheckUserSessionStatusUseCase>();
  var route = Routes.login;

  checkUserSessionStatusUseCase().then(
    (value) {
      final authStatus = value.authStatus ?? false;

      if (authStatus) {
        route = Routes.home;
      } else {
        route = Routes.login;
      }
    },
  );

  return route;
}
