import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreateCampaign
    implements UseCase<Result<CampaignDocument>, CreateCampaignParams> {
  final CampaignRepository _campaignRepository;

  CreateCampaign({required CampaignRepository campaignRepository})
      : _campaignRepository = campaignRepository;

  @override
  Future<Result<CampaignDocument>> call(CreateCampaignParams params) async {
    var result = await _campaignRepository.createCampaign(
      campaignRequest: params.campaignRequest,
      imageFile: params.imageFile,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return Result.success((result as Success).value);
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
