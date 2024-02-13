import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_carousel_images/get_carousel_images.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_carousel_images_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_carousels_provider.g.dart';

@riverpod
Future<List<CarouselImageDocument>> getListCarousels(
    GetListCarouselsRef ref) async {
  GetCarouselImages getCarouselImages =
      ref.read(getCarouselImagesUseCaseProvider);

  var result = await getCarouselImages(null);

  return switch (result) {
    Success(value: final carousels) => carousels,
    Failed(message: _) => const [],
  };
}
