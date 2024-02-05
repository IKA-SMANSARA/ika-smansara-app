import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetCampaignsByCategory
    implements
        UseCase<Result<List<CampaignDocument>>, GetCampaignsByCategoryParams> {
  final CampaignRepository _campaignRepository;

  GetCampaignsByCategory({
    required CampaignRepository campaignRepository,
  }) : _campaignRepository = campaignRepository;

  @override
  Future<Result<List<CampaignDocument>>> call(
      GetCampaignsByCategoryParams params) async {
    var result = await _campaignRepository.getCampaignByCategories(
      categoryName: params.categoryName,
    );

    Constants.logger.d(result);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
