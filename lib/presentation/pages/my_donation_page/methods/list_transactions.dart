import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_transaction_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

List<Widget> listTransactions({
  required AsyncValue<List<TransactionDocument>> transactions,
  void Function(TransactionDocument transaction)? onTap,
}) =>
    (transactions.whenOrNull(
          data: (data) {
            if (data.isEmpty) {
              return [
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    'Belum ada riwayat donasi',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ];
            }

            return data
                .map(
                  (transaction) => Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: HorizontalTransactionCard(
                      onTap: () => onTap?.call(transaction),
                      imageUrl: transaction.campaignImage ?? '',
                      campaignName: transaction.campaignName ?? 'Nama Kampanye',
                      currentUpdate: transaction.updatedAt ?? '',
                      amount: transaction.amount ?? 0,
                      cardWidth: double.infinity,
                      paymentStatus: transaction.paymentStatus ?? 'Unknown',
                    ),
                  ),
                )
                .toList();
          },
          error: (error, stackTrace) => [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.red.withValues(alpha: 0.2),
                ),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: Colors.red,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Gagal memuat data donasi',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Silakan coba lagi nanti',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
          loading: () => [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: const Color(0xFFD52014),
                  size: 35,
                ),
              ),
            ),
          ],
        ) ??
        []);