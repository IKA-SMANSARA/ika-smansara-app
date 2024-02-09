import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';

Map<double, SizedBox> _verticalSpaces = {};
Map<double, SizedBox> _horizontalSpaces = {};

SizedBox verticalSpace(double height) {
  if (!_verticalSpaces.containsKey(height)) {
    _verticalSpaces[height] = SizedBox(
      height: height,
    );
  }

  return _verticalSpaces[height] ?? const SizedBox();
}

SizedBox horizontalSpace(double width) {
  if (!_horizontalSpaces.containsKey(width)) {
    _horizontalSpaces[width] = SizedBox(
      width: width,
    );
  }

  return _horizontalSpaces[width] ?? const SizedBox();
}

String getRemainingDays({String? dateEndCampaign}) {
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

double getCampaignProgressIndicatorValue(
  int goalAmount,
  int currentAmount,
) {
  return (currentAmount / goalAmount) * 100 / 100;
}

bool enableInfiniteScrollStatus({int? listLength = 0}) {
  if (listLength != 1) {
    return true;
  } else {
    return false;
  }
}

int categoryMenuCrossAxisCount(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 4;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 5;
  } else {
    return 10;
  }
}

double responsiveAspectRatio(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 1.7;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 2.7;
  } else {
    return 3.7;
  }
}

double headerImageLogoHeigh(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 32.0;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 52.0;
  } else {
    return 72.0;
  }
}

double headerHomeBackgroundHeigh(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 200;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 250;
  } else {
    return 300;
  }
}

String countDays(String? dateEndCampaign) {
  final timestampString = dateEndCampaign ?? '';

  if (timestampString != '') {
    final timestamp = DateTime.parse(timestampString);

    final today = DateTime.now();

    final difference = today.difference(timestamp);

    final remainingDays = difference.inDays;

    if (remainingDays != 0) {
      return '$remainingDays hari lalu';
    } else {
      return '';
    }
  } else {
    return '';
  }
}

String getTotalPayment(String? payment) {
  return (int.parse((payment ?? '0')) +
          (int.parse((payment ?? '0')) * getPercentFeeValue(payment)))
      .toInt()
      .toIDRCurrencyFormat();
}

String getPaymentFee(String? payment) {
  return (int.parse((payment ?? '0')) * getPercentFeeValue(payment))
      .toInt()
      .toIDRCurrencyFormat();
}

double getPercentFeeValue(String? payment) {
  if (int.parse(payment ?? '') < 100000) {
    return 10.5 / 100;
  } else if (int.parse(payment ?? '') < 200000) {
    return 5.5 / 100;
  } else if (int.parse(payment ?? '') < 300000) {
    return 2.5 / 100;
  } else if (int.parse(payment ?? '') < 400000) {
    return 1.7 / 100;
  } else if (int.parse(payment ?? '') < 500000) {
    return 1.5 / 100;
  } else {
    return 0.9 / 100;
  }
}

String getRandomOrderIdNumber() {
  final randomInt = Random().nextInt(99999) + 1000;
  final merchantOrderId =
      'ID-$randomInt-${DateTime.now().millisecondsSinceEpoch}';
  return merchantOrderId;
}
