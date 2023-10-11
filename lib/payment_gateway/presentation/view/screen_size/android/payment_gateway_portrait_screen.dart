import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
