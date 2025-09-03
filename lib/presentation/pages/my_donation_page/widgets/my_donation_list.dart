import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/list_transactions.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class MyDonationList extends ConsumerWidget {
  final AsyncValue<List<TransactionDocument>> transactions;

  const MyDonationList({
    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            'Riwayat Donasi',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
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
    );
  }
}