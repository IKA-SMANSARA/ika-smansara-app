import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentWindowWebViewPage extends StatelessWidget {
  const PaymentWindowWebViewPage({required this.paymentMethod, super.key});

  final String? paymentMethod;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: PaymentWindowWebViewPortraitScreen(
          paymentMethod: paymentMethod ?? '',
        ),
      ),
    );
  }
}
