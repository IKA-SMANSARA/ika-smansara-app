import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';

class MyDonationStats extends ConsumerWidget {
  final AsyncValue<List<TransactionDocument>> transactions;

  const MyDonationStats({
    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return transactions.when(
      data: (data) {
        if (data.isEmpty) {
          return const SizedBox.shrink();
        }

        final totalAmount = data.fold<int>(
          0,
          (sum, transaction) => sum + (transaction.amount ?? 0),
        );

        final totalDonations = data.length;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // Total Donations
              Expanded(
                child: Column(
                  children: [
                    Text(
                      totalDonations.toString(),
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Total Donasi',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Divider
              Container(
                height: 40,
                width: 1,
                color: Colors.grey.withValues(alpha: 0.3),
              ),

              // Total Amount
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Rp ${totalAmount.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFD52014),
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Total Nominal',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}