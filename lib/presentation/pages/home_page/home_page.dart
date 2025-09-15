import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/header_image_logo.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_list_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
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
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: headerHomeBackgroundHeight(context),
              decoration: const BoxDecoration(
                color: Color(0xFF104993),
              ),
            ),
            Column(
              children: [
                verticalSpace(16),
                Row(
                  children: [
                    horizontalSpace(16),
                    Expanded(
                      flex: 7,
                      child: headerImageLogo(
                        context: context,
                      ),
                    ),
                    horizontalSpace(
                      MediaQuery.of(context).size.width * 0.30,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 14,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                        ),
                      ).onClick(
                        () => ref
                            .read(routerProvider)
                            .pushNamed('video-tutorial-page'),
                      ),
                    ),
                  ],
                ),
                verticalSpace(16),
                carouselImages(
                  context: context,
                  carouselImagesValue: ref.watch(getListCarouselsProvider),
                ),
                verticalSpace(28),
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
                      queryParameters: {
                        "from-home": 'true',
                      },
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
