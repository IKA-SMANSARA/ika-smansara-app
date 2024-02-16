import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_by_user_id/get_campaign_by_user_id.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_by_user_id/get_campaign_by_user_id_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_campaign_by_user_id_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaign_by_user_id_provider.g.dart';

@riverpod
Future<List<CampaignDocument>> getCampaignByUserId(
  GetCampaignByUserIdRef ref, {
  required String userId,
}) async {
  GetCampaignByUserId getCampaignByUserIdData = ref.read(
    getCampaignByUserIdUseCaseProvider,
  );

  var result = await getCampaignByUserIdData(
    GetCampaignByUserIdParams(
      userId: userId,
    ),
  );

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => const [],
  };
}
