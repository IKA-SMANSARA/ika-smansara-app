import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentGatewayPage extends StatelessWidget {
  const PaymentGatewayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: PaymentGatewayPortraitScreen(),
      ),
    );
  }
}
