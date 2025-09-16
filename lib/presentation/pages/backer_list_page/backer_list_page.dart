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
       body: asyncBackerList.isLoading
           ? Container(
               padding: const EdgeInsets.all(16),
               child: Center(
                 child: LoadingAnimationWidget.inkDrop(
                   color: Colors.amber,
                   size: 50,
                 ),
               ),
             )
           : asyncBackerList.whenOrNull(
               data: (data) => data.isNotEmpty
                   ? ListView.separated(
                       padding: const EdgeInsets.all(16),
                       separatorBuilder: (context, index) => const SizedBox(height: 12),
                       itemCount: data.length,
                       itemBuilder: (context, index) {
                         final backer = data[index];
                         return BackerCard(
                           backerName: backer.userName ?? '',
                           amount: (backer.amount ?? 0).toIDRCurrencyFormat(),
                           dateTime: countDays(
                             backer.createdAt,
                           ),
                           profileImageUrl: null, // TODO: Add profile image URL from backend
                         );
                       },
                     )
                   : Container(
                       padding: const EdgeInsets.all(16),
                       child: Center(
                         child: AutoSizeText(
                           'Belum ada donatur',
                           style: TextStyle(
                             color: Colors.grey.shade600,
                             fontSize: 16,
                           ),
                         ),
                       ),
                     ),
               error: (error, stackTrace) => Container(
                 padding: const EdgeInsets.all(16),
                 child: Center(
                   child: AutoSizeText(
                     'Terjadi kesalahan saat memuat data',
                     style: TextStyle(
                       color: Colors.grey.shade600,
                       fontSize: 16,
                     ),
                   ),
                 ),
               ),
             ) ??
             Container(
               padding: const EdgeInsets.all(16),
               child: Center(
                 child: LoadingAnimationWidget.inkDrop(
                   color: Colors.amber,
                   size: 50,
                 ),
               ),
             ),
    );
  }
}
