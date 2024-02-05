import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget carouselCampaignImage({
  void Function(CampaignDocument campaign)? onTap,
  required AsyncValue<List<CampaignDocument>> campaigns,
}) =>
    campaigns.when(
      data: (data) => FlutterCarousel.builder(
        itemCount: data.length,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return SizedBox(
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: data[itemIndex].photoThumbnail ?? '',
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        },
        options: CarouselOptions(
          aspectRatio: 16 / 9,
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
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
