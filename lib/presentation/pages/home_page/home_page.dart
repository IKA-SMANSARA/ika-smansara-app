import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_list_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

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
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF104993),
                    Colors.white,
                  ],
                  stops: [0.3, 1.0],
                ),
              ),
              child: InkWell(
                onTap: () {
                  ref.read(routerProvider).pushNamed('account');
                },
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Assets.images.logoIkaSmansaraColored.svg(
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            carouselImages(
              context: context,
              carouselImagesValue: ref.watch(getListCarouselsProvider),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori Kampanye',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 16),
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
