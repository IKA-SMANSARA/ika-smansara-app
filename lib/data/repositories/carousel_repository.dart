import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class CarouselRepository {
  Future<Result<List<CarouselImageDocument>>> getCarousels();
}
