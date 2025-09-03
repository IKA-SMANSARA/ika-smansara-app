import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget carouselTransactionImage({
  required BuildContext context,
  required AsyncValue<List<TransactionDocument>> campaigns,
}) =>
    campaigns.when(
      data: (data) {
        if (data.isEmpty) {
          return const SizedBox.shrink();
        }

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: FlutterCarousel.builder(
            itemCount: data.length,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: data[itemIndex].campaignImage ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: LoadingAnimationWidget.newtonCradle(
                          color: const Color(0xFFD52014),
                          size: 35,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[200],
                      child: const Icon(
                        Icons.image_not_supported_outlined,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              aspectRatio: responsiveImageAspectRatio(context),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enableInfiniteScroll: enableInfiniteScrollStatus(
                listLength: data.length,
              ),
              showIndicator: true,
              viewportFraction: 0.9,
              slideIndicator: CircularSlideIndicator(
                slideIndicatorOptions: const SlideIndicatorOptions(
                  indicatorBackgroundColor: Colors.grey,
                  currentIndicatorColor: Color(0xFFD52014),
                ),
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => Container(
        height: 200,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.red,
              ),
              SizedBox(height: 8),
              Text(
                'Gagal memuat gambar',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      loading: () => Container(
        height: 200,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: LoadingAnimationWidget.inkDrop(
            color: const Color(0xFFD52014),
            size: 35,
          ),
        ),
      ),
    );