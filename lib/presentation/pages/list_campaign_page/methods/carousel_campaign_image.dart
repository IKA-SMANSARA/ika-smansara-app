import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget carouselCampaignImage({
  required BuildContext context,
  required AsyncValue<List<CampaignDocument>> campaigns,
}) =>
    campaigns.when(
      data: (data) => FlutterCarousel.builder(
        itemCount: data.length,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CachedNetworkImage(
              imageUrl: data[itemIndex].photoThumbnail ?? '',
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        },
        options: CarouselOptions(
          aspectRatio: responsiveImageAspectRatio(context),
          autoPlay: true,
          enableInfiniteScroll: enableInfiniteScrollStatus(
            listLength: data.length,
          ),
          showIndicator: false,
          viewportFraction: 1,
        ),
      ),
      error: (error, stackTrace) => const Center(
        child: Text('NETWORK ERROR!'),
      ),
      loading: () => Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: LoadingAnimationWidget.inkDrop(
            color: Colors.amber,
            size: 35,
          ),
        ),
      ),
    );
