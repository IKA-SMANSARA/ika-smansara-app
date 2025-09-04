import 'package:flutter/material.dart';

class MyDonationEmpty extends StatelessWidget {
  const MyDonationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Empty State Icon with better styling
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: const Color(0xFF104993).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF104993).withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: const Icon(
              Icons.volunteer_activism_outlined,
              size: 80,
              color: Color(0xFF104993),
            ),
          ),

          const SizedBox(height: 24),

          // Title with better typography
          Text(
            'Belum Ada Donasi',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF104993),
                  letterSpacing: -0.5,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 12),

          // Description with better spacing
          Text(
            'Anda belum pernah melakukan donasi.\nMari mulai berdonasi untuk membantu sesama!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  height: 1.6,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 32),

          // Call to Action with better styling
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF104993),
                  Color(0xFF1a5fb4),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF104993).withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.volunteer_activism_outlined,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Mulai Donasi Sekarang',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
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