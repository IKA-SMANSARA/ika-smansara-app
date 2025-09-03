import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/header_image_logo.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_list_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:video_player/video_player.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/images/tutorial.mp4',
    )..initialize().then((_) {
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        title: const Text('Beranda'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section with Logo
              Container(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: headerImageLogo(context: context),
                ),
              ),

              // Welcome Text
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Selamat Datang di IKA Smansara',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Temukan kampanye yang ingin Anda dukung',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

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

              const SizedBox(height: 24),

              // Tutorial Video Section
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tutorial Penggunaan',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: _videoPlayerController.value.isInitialized
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: _videoPlayerController.value.aspectRatio,
                                child: VideoPlayer(_videoPlayerController),
                              ),
                            )
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}