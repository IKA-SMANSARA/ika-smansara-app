import 'package:ika_smansara/domain/usecases/delete_campaign/delete_campaign.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_campaign_use_case_provider.g.dart';

@riverpod
DeleteCampaign deleteCampaignUseCase(DeleteCampaignUseCaseRef ref) =>
    DeleteCampaign(
      campaignRepository: ref.watch(campaignRepositoryProvider),
    );
