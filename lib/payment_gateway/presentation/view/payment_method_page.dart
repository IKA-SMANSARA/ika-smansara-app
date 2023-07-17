import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: PaymentMethodPortraitScreen(),
      ),
    );
  }
}
