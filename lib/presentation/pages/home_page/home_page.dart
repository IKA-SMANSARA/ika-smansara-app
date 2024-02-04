import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/build_context_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/header_image_logo.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFF104993),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(16),
                headerImageLogo(),
                verticalSpace(16),
                carouselImages(
                  carouselImagesValue: ref.watch(getCarouselsProvider),
                ),
                verticalSpace(30),
                categoryList(
                  categories: ref.watch(getListCategoryProvider),
                  onTap: (category) {
                    context.showSnackBar('$category clicked');
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
                    context.showSnackBar('$campaign clicked');
                  },
                  onPressed: () {
                    context.showSnackBar('GO TO PAGE ALL CAMPAIGN');
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
