import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CampaignBackerSection extends StatelessWidget {
  final WidgetRef ref;
  final int backerCount;
  final AsyncValue<List<TransactionDocument>> asyncBackerList;
  final CampaignDocument campaign;

  const CampaignBackerSection({
    required this.ref,
    required this.backerCount,
    required this.asyncBackerList,
    required this.campaign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header with count and "View All" button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Donatur ($backerCount)',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(routerProvider).pushNamed(
                  'backer-list-page',
                  extra: campaign,
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                'Lihat Semua',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF104993),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Backer list
        asyncBackerList.when(
          data: (data) => Column(
            children: data.map((backer) => BackerCard(
              key: ValueKey(backer.id ?? backer.hashCode),
              backerName: backer.userName ?? '',
              amount: (backer.amount ?? 0).toIDRCurrencyFormat(),
              dateTime: countDays(backer.createdAt),
            )).toList(),
          ),
          error: (error, stackTrace) => const Center(
            child: Text(
              'Gagal memuat data donatur',
              style: TextStyle(color: Colors.red),
            ),
          ),
          loading: () => Center(
            child: LoadingAnimationWidget.inkDrop(
              color: Colors.amber,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}