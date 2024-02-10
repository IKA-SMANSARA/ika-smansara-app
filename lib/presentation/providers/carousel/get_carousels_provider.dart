import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_carousel_images/get_carousel_images.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_carousel_images_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_carousels_provider.g.dart';

@Riverpod(keepAlive: true)
class GetCarousels extends _$GetCarousels {
  @override
  FutureOr<List<CarouselImageDocument>> build() => [];

  Future<void> getCarouselImagesData() async {
    state = const AsyncLoading();

    GetCarouselImages getCarouselImages =
        ref.read(getCarouselImagesUseCaseProvider);

    var result = await getCarouselImages(null);

    switch (result) {
      case Success(value: final carouselImages):
        state = AsyncData(carouselImages);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = AsyncData(state.valueOrNull ?? []);
    }
  }
}
