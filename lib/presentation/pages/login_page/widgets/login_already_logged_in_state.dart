import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginAlreadyLoggedInState extends StatelessWidget {
  const LoginAlreadyLoggedInState({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle_outline,
            size: 60,
            color: Colors.green,
          ),
          const SizedBox(height: 24),
          const Text(
            'Anda sudah login!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          const Text(
            'Mengarahkan ke halaman utama...',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          LoadingAnimationWidget.inkDrop(
            color: Colors.green,
            size: 30,
          ),
        ],
      ),
    );
  }
}