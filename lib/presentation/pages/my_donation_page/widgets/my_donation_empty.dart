import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class MyDonationEmpty extends StatelessWidget {
  const MyDonationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Empty State Icon
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFF104993).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Assets.images.gift.svg(
              width: 80,
              height: 80,
              colorFilter: const ColorFilter.mode(
                Color(0xFF104993),
                BlendMode.srcIn,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Title
          Text(
            'Belum Ada Donasi',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF104993),
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 12),

          // Description
          Text(
            'Anda belum pernah melakukan donasi. Mari mulai berdonasi untuk membantu sesama!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  height: 1.5,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 32),

          // Call to Action
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF104993).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFF104993).withValues(alpha: 0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.volunteer_activism_outlined,
                  color: const Color(0xFF104993),
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Mulai Donasi Sekarang',
                  style: TextStyle(
                    color: const Color(0xFF104993),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}