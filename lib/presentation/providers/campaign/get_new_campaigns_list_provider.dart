import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_new_campaigns/get_new_campaigns.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_new_campaigns_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_new_campaigns_list_provider.g.dart';

@riverpod
Future<List<CampaignDocument>> getNewCampaignsList(
    GetNewCampaignsListRef ref) async {
  GetNewCampaigns getNewCampaigns = ref.read(getNewCampaignsUseCaseProvider);

  var result = await getNewCampaigns(null);

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => const [],
  };
}
