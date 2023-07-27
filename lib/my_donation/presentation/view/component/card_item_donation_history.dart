import 'package:flutter/material.dart';

class CardItemDonationHistory extends StatelessWidget {
  const CardItemDonationHistory({
    required this.onPress,
    required this.campaignTitle,
    required this.createdDonationAt,
    required this.campaignImage,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final String? createdDonationAt;
  final Widget? campaignImage;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
