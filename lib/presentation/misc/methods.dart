import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:jiffy/jiffy.dart';

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

int responsiveGridMenuCrossAxisCount(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 4;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 5;
  } else {
    return 10;
  }
}

double responsiveImageAspectRatio(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 1.7;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 2.7;
  } else {
    return 3.7;
  }
}

double headerImageLogoHeight(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 32.0;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 52.0;
  } else {
    return 72.0;
  }
}

double headerHomeBackgroundHeight(BuildContext context) {
  if (MediaQuery.of(context).size.width <= MinimumScreenSize.smallScreenWidth) {
    return 200;
  } else if (MediaQuery.of(context).size.width <=
      MinimumScreenSize.expandedScreenWidth) {
    return 250;
  } else {
    return 300;
  }
}

String getRemainingDays({String? dateEndCampaign}) {
  final timestampString = dateEndCampaign ?? '';

  if (timestampString != '') {
    var formatter = Jiffy.parse(
      timestampString,
      pattern: 'yyyy-MM-ddTHH:mm:ss.SSSZ',
    ).add(hours: 7).toNow(
          withPrefixAndSuffix: false,
        );
    return '$formatter lagi';
  } else {
    return '-';
  }
}

String formatReadableDateTime({String? dateTime}) {
  return Jiffy.parse(
    dateTime ?? '',
    pattern: 'yyyy-MM-ddTHH:mm:ss.SSSZ',
  ).format(pattern: 'd MMMM y');
}

String formatUploadableDateTime({String? dateTime}) {
  return Jiffy.parse(dateTime ?? '')
      .format(pattern: 'yyyy-MM-ddTHH:mm:ss.SSSZ');
}

String formatDate(String timestampString) {
  if (timestampString != '') {
    return Jiffy.parse(
      timestampString,
      pattern: 'yyyy-MM-ddTHH:mm:ss.SSSZ',
    ).add(hours: 7).format(pattern: 'd MMMM y HH:mm');
  } else {
    return '';
  }
}

String formatDate2(String timestampString) {
  if (timestampString != '') {
    return Jiffy.parse(
      timestampString,
      pattern: 'yyyy-MM-dd HH:mm:ss',
    ).format(pattern: 'd MMMM y HH:mm');
  } else {
    return '';
  }
}

String countDays(String? dateEndCampaign) {
  final timestampString = dateEndCampaign ?? '';

  if (timestampString != '') {
    var formatter = Jiffy.parse(
      timestampString,
      pattern: 'yyyy-MM-ddTHH:mm:ss.SSSZ',
    ).add(hours: 7).fromNow(
          withPrefixAndSuffix: false,
        );
    return '$formatter yang lalu';
  } else {
    return '-';
  }
}

String getTotalPayment(String? payment) {
  return (int.parse((payment ?? '0')) + getPercentFeeValue())
      .toInt()
      .toIDRCurrencyFormat();
}

String getPaymentFee() {
  return getPercentFeeValue().toInt().toIDRCurrencyFormat();
}

double getPercentFeeValue() {
  // if (int.parse(payment ?? '') < 100000) {
  //   return 10.5 / 100;
  // } else if (int.parse(payment ?? '') < 200000) {
  //   return 5.5 / 100;
  // } else if (int.parse(payment ?? '') < 300000) {
  //   return 2.5 / 100;
  // } else if (int.parse(payment ?? '') < 400000) {
  //   return 1.7 / 100;
  // } else if (int.parse(payment ?? '') < 500000) {
  //   return 1.5 / 100;
  // } else {
  //   return 0.9 / 100;
  // }

  return 5000 + (5000 * 0.11);
}

String getRandomOrderIdNumber() {
  final randomInt = Random().nextInt(99999) + 1000;
  final merchantOrderId =
      'ID-$randomInt-${DateTime.now().millisecondsSinceEpoch}';
  return merchantOrderId;
}

String paymentType(String stringPaymentType) {
  if (stringPaymentType == 'bank_transfer') {
    return 'Virtual Account / Bank Transfer';
  } else if (stringPaymentType == 'credit_card') {
    return 'Debit / Credit Card';
  } else {
    return stringPaymentType;
  }
}
