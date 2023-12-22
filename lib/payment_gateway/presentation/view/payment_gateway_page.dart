import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentGatewayPage extends StatelessWidget {
  const PaymentGatewayPage({
    required this.idCampaign,
    required this.campaignName,
    required this.campaignImage,
    super.key,
  });

  final String? idCampaign;
  final String? campaignName;
  final String? campaignImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: PaymentGatewayPortraitScreen(
          idCampaign: idCampaign ?? '',
          campaignName: campaignName ?? '',
          campaignImage: campaignImage ?? '',
        ),
      ),
    );
  }
}
