import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_campaign_use_case_provider.g.dart';

@riverpod
UpdateCampaign updateCampaignUseCase(UpdateCampaignUseCaseRef ref) =>
    UpdateCampaign(
      campaignRepository: ref.watch(campaignRepositoryProvider),
    );
