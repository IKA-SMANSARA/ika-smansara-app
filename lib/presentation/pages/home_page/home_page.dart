import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    // Listen to user authentication changes
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
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Material(
              color: Colors.transparent,
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo Section
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Center(
                    child: Assets.images.logoIkaSmansaraColored.svg(
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Carousel Section
                carouselImages(
                  context: context,
                  carouselImagesValue: ref.watch(getListCarouselsProvider),
                ),

                const SizedBox(height: 24),

                // Category Section
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

                // Campaign Section
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
                    // TODO: Navigate to all campaigns page
                  },
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

