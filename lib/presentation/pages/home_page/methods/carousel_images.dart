import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/widgets/parallax_image_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Widget carouselImages({
  required BuildContext context,
  required AsyncValue<List<CarouselImageDocument>> carouselImagesValue,
}) =>
    carouselImagesValue.when(
      data: (data) => FlutterCarousel.builder(
        itemCount: data.length,
        itemBuilder: (context, index, pageViewIndex) {
          return ParallaxImageCard(
            image: data[index].imageUrl ??
                'https://picsum.photos/seed/picsum/200/300',
          );
        },
        options: FlutterCarouselOptions(
          aspectRatio: responsiveImageAspectRatio(context),
          autoPlay: true,
          showIndicator: false,
          initialPage: (data.length > 1) ? 2 : 1,
        ),
      ),
      error: (error, stackTrace) => const Center(
        child: Text('NETWORK ERROR!'),
      ),
      loading: () => Center(
        child: LoadingAnimationWidget.inkDrop(
          color: Colors.amber,
          size: 35,
        ),
      ),
    );
