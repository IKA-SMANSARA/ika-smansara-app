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
    return Column(
      children: listTransactions(
        transactions: transactions,
        onTap: (transaction) {
          ref.read(routerProvider).pushNamed(
                'detail-transaction-page',
                extra: transaction.id,
              );
        },
      ),
    );
  }
}