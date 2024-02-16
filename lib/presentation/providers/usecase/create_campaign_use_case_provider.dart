import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_campaign_use_case_provider.g.dart';

@riverpod
CreateCampaign createCampaignUseCase(CreateCampaignUseCaseRef ref) =>
    CreateCampaign(
      campaignRepository: ref.watch(
        campaignRepositoryProvider,
      ),
    );
