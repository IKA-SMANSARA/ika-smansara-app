import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transactions_list_provider.dart';

class MyDonationErrorState extends ConsumerWidget {
  final Object error;

  const MyDonationErrorState({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Error Icon
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.error_outline,
              size: 60,
              color: Colors.red,
            ),
          ),

          const SizedBox(height: 24),

          // Error Title
          Text(
            'Gagal Memuat Data',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 12),

          // Error Description
          Text(
            'Terjadi kesalahan saat memuat riwayat donasi Anda. Silakan coba lagi.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  height: 1.5,
                ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // Error Details (for debugging)
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[700],
                    fontFamily: 'monospace',
                  ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 32),

          // Retry Button
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
              onPressed: () => ref.invalidate(getTransactionsListProvider),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD52014),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Coba Lagi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}