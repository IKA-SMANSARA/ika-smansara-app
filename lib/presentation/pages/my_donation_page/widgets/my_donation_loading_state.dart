import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MyDonationLoadingState extends StatelessWidget {
  const MyDonationLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo Section
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF104993).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Assets.images.logoIkaSmansaraColored.svg(
              width: 60,
              height: 60,
            ),
          ),

          const SizedBox(height: 24),

          // Loading Animation
          LoadingAnimationWidget.inkDrop(
            color: const Color(0xFFD52014),
            size: 50,
          ),

          const SizedBox(height: 24),

          // Loading Text
          Text(
            'Memuat riwayat donasi...',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: const Color(0xFF104993),
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          Text(
            'Mohon tunggu sebentar',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}