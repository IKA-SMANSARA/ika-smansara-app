import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
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
      '${name?.trim()}-${DateTime.now().millisecondsSinceEpoch}';
  return merchantOrderId;
}

double getCampaignProgressIndicatorValue(
  int goalAmount,
  int currentAmount,
) {
  return (currentAmount / goalAmount) * 100 / 100;
}

String currencyFormatter(dynamic number) {
  const idrCurrencySettings = CurrencyFormat(
    symbol: 'Rp',
    thousandSeparator: '.',
    decimalSeparator: ',',
  );

  return CurrencyFormatter.format(
    number,
    idrCurrencySettings,
    decimal: 0,
  );
}

String getRemainingDays(String? dateEndCampaign) {
  final timestampString = dateEndCampaign ?? '';

  if (timestampString != '') {
    final timestamp = DateTime.parse(timestampString);

    final today = DateTime.now();

    final difference = timestamp.difference(today);

    final remainingDays = difference.inDays;

    if (remainingDays != 0) {
      return '$remainingDays hari lagi';
    } else {
      return '0 hari lagi';
    }
  } else {
    return '0 hari lagi';
  }
}

bool enableInfiniteScrollStatus({int? listLength = 0}) {
  if (listLength != 1) {
    return true;
  } else {
    return false;
  }
}
