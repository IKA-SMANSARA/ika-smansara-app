import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/common_methods/list_campaigns.dart';
import 'package:ika_smansara/presentation/pages/list_campaign_page/methods/carousel_campaign_image.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_list_campaigns_by_category_list_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ListCampaignPage extends ConsumerWidget {
  final CategoryDocument? category;

  const ListCampaignPage(this.category, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncCampaignsData = ref.watch(
      getListCampaignsByCategoryProvider(
        categoryName: category?.nameCategory ?? '',
      ),
    );

    // show error information if failed get list campaigns
    ref.listen(
      getListCampaignsByCategoryProvider(
        categoryName: category?.nameCategory ?? '',
      ),
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          (category?.nameCategory ?? '').toUpperCase(),
        ),
      ),
      body: asyncCampaignsData.isLoading ? Container(
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            ) : ListView(
        children: [
          Visibility(
            child: carouselCampaignImage(
              context: context,
              campaigns: asyncCampaignsData,
            ),
          ),
          verticalSpace(16),
          ...listCampaigns(
            campaigns: asyncCampaignsData,
            onTap: (campaign) {
              ref.read(routerProvider).pushNamed(
                'campaign-detail-page',
                extra: campaign,
                queryParameters: {
                  "from-home": 'true',
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
