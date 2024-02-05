import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

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
