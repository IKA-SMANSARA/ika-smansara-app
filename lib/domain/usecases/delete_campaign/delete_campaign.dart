import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/delete_campaign/delete_campaign_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class DeleteCampaign
    implements UseCase<Result<CampaignDocument>, DeleteCampaignParams> {
  final CampaignRepository _campaignRepository;

  DeleteCampaign({required CampaignRepository campaignRepository})
      : _campaignRepository = campaignRepository;

  @override
  Future<Result<CampaignDocument>> call(DeleteCampaignParams params) async {
    var result = await _campaignRepository.deleteCampaign(
      campaignRequest: params.campaignRequest,
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
