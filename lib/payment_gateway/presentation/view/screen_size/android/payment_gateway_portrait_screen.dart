import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';

class PaymentGatewayPortraitScreen extends StatelessWidget {
  const PaymentGatewayPortraitScreen({required this.paymentMethod, super.key});

  final String? paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.push(Routes.selectPaymentMethod),
              child: const Text('Select Payment Method'),
            ),
            const SizedBox(height: 8),
            Text('payment method : $paymentMethod'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.pushNamed(
                'payment-window-web-view',
                queryParameters: {
                  'payment method': paymentMethod,
                },
              ),
              child: const Text('Open Window Payment'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
