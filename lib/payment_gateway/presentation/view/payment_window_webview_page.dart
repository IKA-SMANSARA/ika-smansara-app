import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentWindowWebViewPage extends StatelessWidget {
  const PaymentWindowWebViewPage({
    required this.campaignId,
    required this.amountValue,
    required this.campaignName,
    required this.campaignImage,
    super.key,
  });

  final String? amountValue;
  final String? campaignId;
  final String? campaignName;
  final String? campaignImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: PaymentWindowWebViewPortraitScreen(
          amountValue: amountValue ?? '1',
          campaignId: campaignId ?? '',
          campaignImage: campaignImage ?? '',
          campaignName: campaignName ?? '',
        ),
      ),
    );
  }
}
