import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/pages/detail_transaction_page/methods/content_detail_transaction.dart';
import 'package:ika_smansara/presentation/pages/detail_transaction_page/methods/header_detail_transaction.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transaction_detail_provider.dart';

class DetailTransactionPage extends ConsumerWidget {
  final String transactionId;

  const DetailTransactionPage({required this.transactionId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncDetailTransactionData = ref.watch(
      getTransactionDetailProvider(
        transactionId: transactionId,
      ),
    );

    var asyncDetailCampaignData = ref
        .watch(
          getCampaignDetailProvider(
            campaignId:
                asyncDetailTransactionData.valueOrNull?.campaignId ?? '',
          ),
        )
        .valueOrNull;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          asyncDetailTransactionData.valueOrNull?.campaignName ?? '',
        ),
      ),
      body: ListView(
        children: [
          ...headerDetailTransaction(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                ...contentDetailTransaction(
                      transactions: asyncDetailTransactionData,
                      campaign: asyncDetailCampaignData,
                      ref: ref,
                    ) ??
                    [],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
