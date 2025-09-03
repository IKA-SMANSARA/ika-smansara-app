import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class MyDonationPageHeader extends StatelessWidget {
  const MyDonationPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF104993),
            Color(0xFF1a5fb4),
          ],
        ),
      ),
      child: Column(
        children: [
          // Logo and Title Section
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

          const SizedBox(height: 16),

          // Title
          Text(
            'Donasiku',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // Subtitle
          Text(
            'Riwayat dan jejak donasi Anda',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.8),
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}