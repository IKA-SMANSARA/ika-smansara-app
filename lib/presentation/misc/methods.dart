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
