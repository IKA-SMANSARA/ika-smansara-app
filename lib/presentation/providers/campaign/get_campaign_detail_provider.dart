import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_campaign_detail_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaign_detail_provider.g.dart';

@riverpod
Future<CampaignDocument?> getCampaignDetail(
  GetCampaignDetailRef ref, {
  required String campaignId,
}) async {
  GetCampaignDetail getCampaignDetail = ref.read(
    getCampaignDetailUseCaseProvider,
  );

  var result = await getCampaignDetail(
    GetCampaignDetailParams(
      campaignId: campaignId,
    ),
  );

  Constants.logger.d(result);

  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}
