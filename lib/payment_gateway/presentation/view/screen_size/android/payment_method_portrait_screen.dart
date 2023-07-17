import 'package:flutter/material.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentMethodPortraitScreen extends StatelessWidget {
  const PaymentMethodPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Payment Method'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: PaymentMethodList()),
        ],
      ),
    );
  }
}
