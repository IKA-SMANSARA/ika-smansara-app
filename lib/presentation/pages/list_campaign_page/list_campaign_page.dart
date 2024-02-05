import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/extensions/build_context_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/list_campaign_page/methods/carousel_campaign_image.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaigns_by_category_list_provider.dart';
import 'package:ika_smansara/presentation/widgets/campaign_card.dart';

class ListCampaignPage extends ConsumerWidget {
  final CategoryDocument? category;

  const ListCampaignPage(this.category, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncCampaignsData = ref.watch(
      getCampaignsByCategoryListProvider(
        categoryName: category?.nameCategory ?? '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          (category?.nameCategory ?? '').toUpperCase(),
        ),
      ),
      body: ListView(
        children: [
          carouselCampaignImage(
            context: context,
            campaigns: asyncCampaignsData,
          ),
          verticalSpace(16),
          ...(asyncCampaignsData.whenOrNull(
                data: (data) => data
                    .map(
                      (campaign) => Padding(
                        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                        child: CampaignCard(
                          onTap: () => context.showSnackBar(
                            campaign.toString(),
                          ),
                          imageUrl: campaign.photoThumbnail ?? '',
                          campaignName: campaign.campaignName ?? '',
                          dateEndCampaign: campaign.dateEndCampaign ?? '',
                          campaignGoalAmount: campaign.goalAmount ?? 0,
                          campaignCurrentAmount: campaign.currentAmount ?? 0,
                          width: double.infinity,
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
                  const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ],
              ) ??
              []),
        ],
      ),
    );
  }
}
