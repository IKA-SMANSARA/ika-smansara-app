import 'package:ika_smansara/domain/usecases/get_carousel_images/get_carousel_images.dart';
import 'package:ika_smansara/presentation/providers/repositories/carousel_repository/carousel_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_carousel_images_use_case_provider.g.dart';

@riverpod
GetCarouselImages getCarouselImagesUseCase(GetCarouselImagesUseCaseRef ref) =>
    GetCarouselImages(
      carouselRepository: ref.watch(carouselRepositoryProvider),
    );
