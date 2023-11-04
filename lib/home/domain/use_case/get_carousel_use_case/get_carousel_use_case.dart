import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/domain/model/error_response.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCarouselUseCase {
  GetCarouselUseCase(this._homeRepository);

  final HomeRepository _homeRepository;

  Future<Either<ErrorResponse, CarouselDocumentResponse>> call() =>
      _homeRepository.getCarousel();
}
