import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetCampaignDetail
    implements UseCase<Result<CampaignDocument>, GetCampaignDetailParams> {
  final CampaignRepository _campaignRepository;

  GetCampaignDetail({
    required CampaignRepository campaignRepository,
  }) : _campaignRepository = campaignRepository;

  @override
  Future<Result<CampaignDocument>> call(
    GetCampaignDetailParams params,
  ) async {
    var result = await _campaignRepository.getCampaignDetail(
      campaignId: params.campaignId,
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
