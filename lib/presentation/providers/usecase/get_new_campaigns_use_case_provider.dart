import 'package:ika_smansara/domain/usecases/get_new_campaigns/get_new_campaigns.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_new_campaigns_use_case_provider.g.dart';

@riverpod
GetNewCampaigns getNewCampaignsUseCase(GetNewCampaignsUseCaseRef ref) => GetNewCampaigns(
      campaignRepository: ref.watch(campaignRepositoryProvider),
    );
