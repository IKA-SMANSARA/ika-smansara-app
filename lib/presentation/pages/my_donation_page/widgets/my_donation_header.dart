import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class MyDonationHeader extends StatelessWidget {
  const MyDonationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF104993).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Assets.images.logoIkaSmansaraColored.svg(
              width: 60,
              height: 60,
            ),
          ),

          const SizedBox(height: 16),

          // Title
          Text(
            'Donasiku',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF104993),
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // Subtitle
          Text(
            'Riwayat dan jejak donasi Anda',
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