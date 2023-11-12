// ignore_for_file: lines_longer_than_80_chars

import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ListCampaignPerCategoryRepository)
class ListCampaignPerCategoryRepositoryImpl
    implements ListCampaignPerCategoryRepository {
  ListCampaignPerCategoryRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, CampaignsCollectionsResponse>>
      getCampaignPerCategory({String? categoryName = ''}) async {
    if (categoryName != '') {
      final responseGetCampaignPerCategory =
          await _apiServices.getAllCampaignsByCategories(
        'search("categories", ["$categoryName"])&queries[]=equal("isActive", [true])&queries[]=equal("isDeleted", [false])',
      );

      if (responseGetCampaignPerCategory.isSuccessful) {
        return Right(
          CampaignsCollectionsResponseDTO.fromJson(
            responseGetCampaignPerCategory.body as Map<String, dynamic>,
          ).toCampaignsCollectionsResponse(),
        );
      } else {
        return Left(
          ErrorResponseDTO.fromJson(
            responseGetCampaignPerCategory.error! as Map<String, dynamic>,
          ).toErrorResponse(),
        );
      }
    } else {
      final responseAllGetCampaigns = await _apiServices.getAllCampaigns(
        'equal("isActive", [true])&queries[]=equal("isDeleted", [false])',
      );

      if (responseAllGetCampaigns.isSuccessful) {
        return Right(
          CampaignsCollectionsResponseDTO.fromJson(
            responseAllGetCampaigns.body as Map<String, dynamic>,
          ).toCampaignsCollectionsResponse(),
        );
      } else {
        return Left(
          ErrorResponseDTO.fromJson(
            responseAllGetCampaigns.error! as Map<String, dynamic>,
          ).toErrorResponse(),
        );
      }
    }
  }
}
