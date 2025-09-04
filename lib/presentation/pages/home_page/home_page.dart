import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/widgets/logo_section.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_list_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_appbar_action_button.dart';
import 'package:ika_smansara/presentation/widgets/global_section_header.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (previous != null && next is AsyncData && next.value == null) {
          ref.read(routerProvider).goNamed('login');
        } else if (next is AsyncError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.error.toString())),
          );
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GlobalAppBarActionButton(routeName: 'account'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const LogoSection(),
            const SizedBox(height: 16),
            carouselImages(
              context: context,
              carouselImagesValue: ref.watch(getListCarouselsProvider),
            ),
            const SizedBox(height: 24),
             Column(
               children: [
                 GlobalSectionHeader(title: 'Kategori Kampanye'),
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
               ],
             ),
            const SizedBox(height: 24),
            ...campaignList(
              title: 'Kampanye Terbaru',
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
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
