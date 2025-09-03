import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class ActionButton extends ConsumerWidget {
  final TransactionDocument transaction;
  final CampaignDocument? campaign;

  const ActionButton({
    super.key,
    required this.transaction,
    this.campaign,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = transaction.paymentStatus?.toLowerCase() ?? '';

    // Show button for successful or expired transactions
    if (status == 'success' || status == 'expire' || status == 'expired') {
      return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            ref.read(routerProvider).pushNamed(
              'checkout-page',
              extra: campaign,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF104993),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
          ),
          child: const Text(
            'Donasi Lagi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    // For pending transactions, show a different message
    if (status == 'pending') {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.orange.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.orange.shade200),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.orange,
              size: 20,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'Transaksi sedang diproses. Silakan selesaikan pembayaran sesuai instruksi yang diberikan.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.orange,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // For failed transactions
    if (status == 'failed') {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.red.shade200),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 20,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'Transaksi gagal. Silakan coba lagi atau hubungi dukungan.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Default case - no action needed
    return const SizedBox.shrink();
  }
}