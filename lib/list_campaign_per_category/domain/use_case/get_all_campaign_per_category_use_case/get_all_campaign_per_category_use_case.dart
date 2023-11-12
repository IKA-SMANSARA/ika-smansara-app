import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCampaignPerCategoryUseCase {
  GetAllCampaignPerCategoryUseCase(this._listCampaignPerCategoryRepository);

  final ListCampaignPerCategoryRepository _listCampaignPerCategoryRepository;

  Future<Either<ErrorResponse, CampaignsCollectionsResponse>> call({
    String? categoryName = '',
  }) =>
      _listCampaignPerCategoryRepository.getCampaignPerCategory(
        categoryName: categoryName,
      );
}
