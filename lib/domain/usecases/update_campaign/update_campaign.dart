import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class UpdateCampaign
    implements UseCase<Result<CampaignDocument>, UpdateCampaignParams> {
  final CampaignRepository _campaignRepository;

  UpdateCampaign({required CampaignRepository campaignRepository})
      : _campaignRepository = campaignRepository;

  @override
  Future<Result<CampaignDocument>> call(UpdateCampaignParams params) async {
    var result = await _campaignRepository.updateCampaign(
      campaignRequest: params.campaignRequest,
      imageFile: params.imageFile,
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
