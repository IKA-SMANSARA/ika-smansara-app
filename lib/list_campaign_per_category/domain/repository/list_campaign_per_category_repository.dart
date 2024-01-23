import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/domain/model/error_response.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

abstract interface class ListCampaignPerCategoryRepository {
  Future<Either<ErrorResponse, CampaignsCollectionsResponse>>
      getCampaignPerCategory({String? categoryName = ''});
}
