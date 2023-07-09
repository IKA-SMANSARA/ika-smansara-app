import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:logging/logging.dart';

void keyboardDismiss(BuildContext context) {
  return FocusScope.of(context).unfocus();
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
