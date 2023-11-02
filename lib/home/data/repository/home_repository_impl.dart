import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, CarouselDocumentResponse>> getCarousel() async {
    final responseGetCarousel = await _apiServices.getCarousel();

    if (responseGetCarousel.isSuccessful) {
      return Right(
        CarouselDocumentResponseDTO.fromJson(
          responseGetCarousel.body as Map<String, dynamic>,
        ).toCarouselDocumentResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetCarousel.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<Either<ErrorResponse, CategoriesDocumentResponse>>
      getCategories() async {
    final responseGetCategories = await _apiServices.getCategories();

    if (responseGetCategories.isSuccessful) {
      return Right(
        CategoriesDocumentResponseDTO.fromJson(
          responseGetCategories.body as Map<String, dynamic>,
        ).toCategoriesDocumentResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetCategories.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
