import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transaction_detail_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'widgets/transaction_header.dart';
import 'widgets/campaign_info_card.dart';
import 'widgets/transaction_status_card.dart';
import 'widgets/payment_details_card.dart';
import 'widgets/payment_breakdown_card.dart';
import 'widgets/action_button.dart';

class DetailTransactionPage extends ConsumerWidget {
  final String transactionId;

  const DetailTransactionPage({required this.transactionId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncTransactionData = ref.watch(
      getTransactionDetailProvider(transactionId: transactionId),
    );

    final asyncCampaignData = ref.watch(
      getCampaignDetailProvider(
        campaignId: asyncTransactionData.valueOrNull?.campaignId ?? '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          asyncTransactionData.valueOrNull?.campaignName ?? 'Detail Transaksi',
        ),
        elevation: 0,
      ),
      body: asyncTransactionData.when(
        data: (transaction) {
          if (transaction == null) {
            return const Center(
              child: Text('Data transaksi tidak ditemukan'),
            );
          }

          final campaign = asyncCampaignData.valueOrNull;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                const TransactionHeader(),

                const SizedBox(height: 24),

                // Campaign Info Card
                CampaignInfoCard(
                  campaignName: transaction.campaignName ?? '',
                  campaignImage: transaction.campaignImage ?? '',
                ),

                const SizedBox(height: 20),

                // Transaction Status Card
                TransactionStatusCard(
                  status: transaction.paymentStatus ?? '',
                  transactionId: transaction.id ?? '',
                ),

                const SizedBox(height: 20),

                // Payment Details Card
                PaymentDetailsCard(
                  transaction: transaction,
                ),

                const SizedBox(height: 20),

                // Payment Breakdown Card
                PaymentBreakdownCard(
                  amount: transaction.amount ?? 0,
                  paymentFee: transaction.paymentFee ?? 0,
                ),

                const SizedBox(height: 32),

                // Action Button
                ActionButton(
                  transaction: transaction,
                  campaign: campaign,
                ),

                const SizedBox(height: 20),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.red,
              ),
              const SizedBox(height: 16),
              const Text(
                'Terjadi kesalahan saat memuat data',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                error.toString(),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        loading: () => Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: LoadingAnimationWidget.inkDrop(
              color: Colors.amber,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
