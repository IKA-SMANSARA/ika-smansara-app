import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';

abstract class HomeRepository {
  Future<Either<ErrorResponse, CarouselDocumentResponse>> getCarousel();

  Future<Either<ErrorResponse, CategoriesDocumentResponse>> getCategories();

  Future<Either<ErrorResponse, CampaignsCollectionsResponse>> getAllCampaigns();
}
