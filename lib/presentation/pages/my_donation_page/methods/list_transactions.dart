import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_transaction_card.dart';

List<Widget> listTransactions({
  required AsyncValue<List<TransactionDocument>> transactions,
  void Function(TransactionDocument transaction)? onTap,
}) =>
    (transactions.whenOrNull(
          data: (data) => data
              .map(
                (transaction) => HorizontalTransactionCard(
                  onTap: () => onTap?.call(transaction),
                  imageUrl: transaction.campaignImage ?? '',
                  campaignName: transaction.campaignName ?? '',
                  currentUpdate: transaction.updatedAt ?? '',
                  amount: transaction.amount ?? 0,
                  cardWidth: double.infinity,
                ),
              )
              .toList(),
          error: (error, stackTrace) => [
            const Center(
              child: Text(
                'NETWORK ERROR!',
              ),
            ),
          ],
          loading: () => [
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ) ??
        []);
