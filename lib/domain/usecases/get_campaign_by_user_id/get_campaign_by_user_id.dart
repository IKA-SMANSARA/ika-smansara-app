import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_by_user_id/get_campaign_by_user_id_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetCampaignByUserId
    implements
        UseCase<Result<List<CampaignDocument>>, GetCampaignByUserIdParams> {
  final CampaignRepository _campaignRepository;

  GetCampaignByUserId({required CampaignRepository campaignRepository})
      : _campaignRepository = campaignRepository;

  @override
  Future<Result<List<CampaignDocument>>> call(
      GetCampaignByUserIdParams params) async {
    var result = await _campaignRepository.getCampaignByUserId(
      userId: params.userId,
    );

    Constants.logger.d(result.resultValue);

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
