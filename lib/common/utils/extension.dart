import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
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

String getPaymentSignatureSHA256(int? amount) {
  final datetime = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  final byte = utf8.encoder.convert(
    '${Constants.merchantCode}$amount$datetime${Constants.apiKeyPaymentGateway}',
  );
  final signature = sha256.convert(byte).toString();
  return signature;
}

String getPaymentSignatureMD5(String? merchantOrderId, int? amount) {
  final byte = utf8.encoder.convert(
    '${Constants.merchantCode}$merchantOrderId$amount${Constants.apiKeyPaymentGateway}',
  );
  final signature = md5.convert(byte).toString();
  return signature;
}

String getMerchantOrderId(String? name) {
  final randomSecure = Random.secure();
  final randomInt = randomSecure.nextInt(999999999);
  final merchantOrderId = 'IKA-SMANSARA-${name?.trim()}-$randomInt';
  return merchantOrderId;
}
