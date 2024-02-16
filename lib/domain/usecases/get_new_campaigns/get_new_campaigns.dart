import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetNewCampaigns implements UseCase<Result<List<CampaignDocument>>, void> {
  final CampaignRepository _campaignRepository;

  GetNewCampaigns({required CampaignRepository campaignRepository})
      : _campaignRepository = campaignRepository;

  @override
  Future<Result<List<CampaignDocument>>> call(void _) async {
    var result = await _campaignRepository.getNewCampaigns();

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
