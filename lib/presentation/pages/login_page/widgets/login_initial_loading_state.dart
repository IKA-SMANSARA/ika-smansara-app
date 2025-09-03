import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginInitialLoadingState extends StatelessWidget {
  const LoginInitialLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Assets.images.logoIkaSmansaraColored.svg(
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(height: 32),
          LoadingAnimationWidget.inkDrop(
            color: const Color(0xFFD52014),
            size: 50,
          ),
          const SizedBox(height: 24),
          const Text(
            'Memeriksa status login...',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF104993),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Mohon tunggu sebentar',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

