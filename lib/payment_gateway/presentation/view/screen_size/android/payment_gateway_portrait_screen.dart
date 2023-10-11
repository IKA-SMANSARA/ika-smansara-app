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
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.pushNamed(
                Routes.paymentWindowWebView,
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
