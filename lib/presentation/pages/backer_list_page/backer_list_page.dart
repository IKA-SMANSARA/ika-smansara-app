import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_backer_list_provider.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BackerListPage extends ConsumerWidget {
  final CampaignDocument campaign;
  const BackerListPage(this.campaign, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncBackerList = ref.watch(
      getBackerListProvider(
        campaignId: campaign.id ?? '',
        isSortList: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Donatur (${campaign.backerCount})'),
      ),
      body: ListView(
        children: [
          ...(asyncBackerList.whenOrNull(
                data: (data) => data
                    .map(
                      (e) => BackerCard(
                        backerName: e.userName ?? '',
                        amount: (e.amount ?? 0).toIDRCurrencyFormat(),
                        dateTime: countDays(
                          e.createdAt,
                        ),
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
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: LoadingAnimationWidget.inkDrop(
                        color: Colors.amber,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ) ??
              []),
        ],
      ),
    );
  }
}
