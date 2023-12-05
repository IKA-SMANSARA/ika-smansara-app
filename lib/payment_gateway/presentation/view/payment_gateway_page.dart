import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentGatewayPage extends StatelessWidget {
  const PaymentGatewayPage({required this.idCampaign, super.key});

  final String? idCampaign;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen:
            PaymentGatewayPortraitScreen(idCampaign: idCampaign ?? ''),
      ),
    );
  }
}
