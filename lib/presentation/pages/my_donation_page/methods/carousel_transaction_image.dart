import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget carouselTransactionImage({
  required BuildContext context,
  required AsyncValue<List<TransactionDocument>> campaigns,
}) =>
    campaigns.when(
      data: (data) => FlutterCarousel.builder(
        itemCount: data.length,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CachedNetworkImage(
              imageUrl: data[itemIndex].campaignImage ?? '',
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
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
