import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/list_campaign_page/methods/carousel_campaign_image.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaigns_by_category_list_provider.dart';

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
        title: Text(
          (category?.nameCategory ?? '').toUpperCase(),
        ),
      ),
      body: ListView(
        children: [
          carouselCampaignImage(campaigns: asyncCampaignsData),
          verticalSpace(16),
          ...(asyncCampaignsData.whenOrNull(
                data: (data) => data
                    .map(
                      (e) => Text(
                        e.campaignName ?? '',
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
