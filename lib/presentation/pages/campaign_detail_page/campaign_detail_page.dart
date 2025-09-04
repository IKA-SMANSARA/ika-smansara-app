import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_backer_list_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_error_widget.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'widgets/campaign_header_image.dart';
import 'widgets/campaign_info_section.dart';
import 'widgets/campaign_description_section.dart';
import 'widgets/campaign_backer_section.dart';
import 'widgets/campaign_action_button.dart';

class CampaignDetailPage extends ConsumerWidget {
  final CampaignDocument? campaign;
  final String fromHome;

  const CampaignDetailPage({
    required this.campaign,
    this.fromHome = 'true',
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCampaignDetailData = ref.watch(
      getCampaignDetailProvider(campaignId: campaign?.id ?? ''),
    );

    final asyncBackerList = ref.watch(
      getBackerListProvider(
        campaignId: campaign?.id ?? '',
        isSortList: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (campaign?.campaignName ?? '').toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: asyncCampaignDetailData.when(
          data: (data) {
            if (data == null) {
              return const Center(
                child: Text('Data kampanye tidak ditemukan'),
              );
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Campaign Header Image
                  CampaignHeaderImage(imageUrl: data.photoThumbnail),

                  const SizedBox(height: 24),

                  // Campaign Info Section
                  CampaignInfoSection(campaign: data),

                  const SizedBox(height: 24),

                  // Campaign Description Section
                  CampaignDescriptionSection(description: data.campaignDescription ?? ''),

                  const SizedBox(height: 24),

                  // Campaign Backer Section (if any backers)
                  if ((data.backerCount ?? 0) > 0) ...[
                    CampaignBackerSection(
                      ref: ref,
                      backerCount: data.backerCount ?? 0,
                      asyncBackerList: asyncBackerList,
                      campaign: data,
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Action Button
                  CampaignActionButton(
                    campaign: campaign,
                    fromHome: fromHome,
                    campaignData: data,
                    ref: ref,
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            );
          },
           error: (error, stackTrace) => GlobalErrorWidget(
             message: error.toString(),
           ),
           loading: () => const GlobalLoadingWidget(
             color: Colors.amber,
           ),
        ),
      ),
    );
  }
}
