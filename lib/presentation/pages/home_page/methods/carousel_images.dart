import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Widget carouselImages({
  required BuildContext context,
  required AsyncValue<List<CarouselImageDocument>> carouselImagesValue,
}) =>
    carouselImagesValue.when(
      data: (data) => FlutterCarousel.builder(
        itemCount: data.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: data[index].imageUrl ?? '',
                placeholder: (context, url) => const LinearProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
        options: CarouselOptions(
          aspectRatio: responsiveImageAspectRatio(context),
          viewportFraction: 1,
          autoPlay: true,
          slideIndicator: CircularWaveSlideIndicator(
            currentIndicatorColor: const Color(0xFF104993),
            indicatorBackgroundColor: Colors.white,
          ),
        ),
      ),
      error: (error, stackTrace) => const Center(
        child: Text('NETWORK ERROR!'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
