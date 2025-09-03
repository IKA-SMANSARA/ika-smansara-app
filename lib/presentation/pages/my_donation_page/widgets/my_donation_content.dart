import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/carousel_transaction_image.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/list_transactions.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class MyDonationContent extends ConsumerWidget {
  final AsyncValue<List<TransactionDocument>> transactions;

  const MyDonationContent({
    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Carousel Section
        carouselTransactionImage(
          context: context,
          campaigns: transactions,
        ),

        const SizedBox(height: 24),

        // Content Section
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section Title
              Text(
                'Riwayat Donasi',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF104993),
                    ),
              ),

              const SizedBox(height: 16),

              // Divider
              Divider(
                color: Colors.grey.withValues(alpha: 0.3),
                height: 1,
              ),

              const SizedBox(height: 16),

              // Transaction List
              ...listTransactions(
                transactions: transactions,
                onTap: (transaction) {
                  ref.read(routerProvider).pushNamed(
                        'detail-transaction-page',
                        extra: transaction.id,
                      );
                },
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}