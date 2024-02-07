import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/header_image_logo.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: headerHomeBackgroundHeigh(context),
              decoration: const BoxDecoration(
                color: Color(0xFF104993),
              ),
            ),
            Column(
              children: [
                verticalSpace(16),
                headerImageLogo(
                  context: context,
                ),
                verticalSpace(16),
                carouselImages(
                  context: context,
                  carouselImagesValue: ref.watch(getCarouselsProvider),
                ),
                verticalSpace(30),
                categoryList(
                  context: context,
                  categories: ref.watch(getListCategoryProvider),
                  onTap: (category) {
                    ref.read(routerProvider).pushNamed(
                          'list-campaign-page',
                          extra: category,
                        );
                  },
                ),
                verticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                verticalSpace(8),
                ...campaignList(
                  title: 'Program IKA SMANSARA',
                  campaigns: ref.watch(getNewCampaignsListProvider),
                  onTap: (campaign) {
                    ref.read(routerProvider).pushNamed(
                          'campaign-detail-page',
                          extra: campaign,
                        );
                  },
                  onPressed: () {
                    ref.read(routerProvider).pushNamed(
                          'list-campaign-page',
                          extra: CategoryDocument(),
                        );
                  },
                ),
                verticalSpace(16),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                verticalSpace(100),
              ],
            )
          ],
        ),
      ],
    );
  }
}
