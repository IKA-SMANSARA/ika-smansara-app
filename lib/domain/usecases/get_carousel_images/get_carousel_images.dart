import 'package:ika_smansara/data/repositories/carousel_repository.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetCarouselImages
    implements UseCase<Result<List<CarouselImageDocument>>, void> {
  final CarouselRepository _carouselRepository;

  GetCarouselImages({required CarouselRepository carouselRepository})
      : _carouselRepository = carouselRepository;

  @override
  Future<Result<List<CarouselImageDocument>>> call(void _) async {
    var result = await _carouselRepository.getCarousels();

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
