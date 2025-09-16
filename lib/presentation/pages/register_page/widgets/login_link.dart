import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class LoginLink extends ConsumerWidget {
  const LoginLink({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sudah punya akun? ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextButton(
          onPressed: () {
            ref.read(routerProvider).goNamed('login');
          },
          child: const Text(
            'Masuk',
            style: TextStyle(
              color: Color(0xFF104993),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}