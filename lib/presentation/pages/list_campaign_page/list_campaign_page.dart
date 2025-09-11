import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/widgets/list_campaigns.dart';
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
        title: Text(
          (category?.nameCategory ?? '').toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFF104993),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: asyncCampaignsData.when(
          loading: () => Center(
            child: LoadingAnimationWidget.inkDrop(
              color: const Color(0xFFD52014),
              size: 50,
            ),
          ),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withValues(alpha: 0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Terjadi kesalahan saat memuat data',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                        letterSpacing: -0.5,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'Silakan coba lagi nanti',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                        height: 1.6,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => ref.invalidate(getListCampaignsByCategoryProvider(
                    categoryName: category?.nameCategory ?? '',
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD52014),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    shadowColor: const Color(0xFFD52014).withValues(alpha: 0.3),
                  ),
                  child: const Text(
                    'Coba Lagi',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          data: (campaigns) {
            if (campaigns.isEmpty) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Empty State Icon with better styling
                    Container(
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: const Color(0xFF104993).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF104993).withValues(alpha: 0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.campaign_outlined,
                        size: 80,
                        color: Color(0xFF104993),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Title with better typography
                    Text(
                      'Belum Ada Kegiatan',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF104993),
                            letterSpacing: -0.5,
                          ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 12),

                    // Description with better spacing
                    Text(
                      'Belum ada kegiatan dalam kategori ini.\nMari lihat kategori lainnya!',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                            height: 1.6,
                          ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 32),

                    // Call to Action with better styling
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF104993),
                            Color(0xFF1a5fb4),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF104993).withValues(alpha: 0.3),
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.explore_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Jelajahi Kategori Lain',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Carousel Section
                Visibility(
                  visible: campaigns.isNotEmpty,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    child: carouselCampaignImage(
                      context: context,
                      campaigns: asyncCampaignsData,
                    ),
                  ),
                ),

                // Campaign List Section
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
            );
          },
        ),
      ),
    );
  }
}
