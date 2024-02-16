import 'package:ika_smansara/domain/usecases/get_campaign_by_user_id/get_campaign_by_user_id.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaign_by_user_id_use_case_provider.g.dart';

@riverpod
GetCampaignByUserId getCampaignByUserIdUseCase(
        GetCampaignByUserIdUseCaseRef ref) =>
    GetCampaignByUserId(
      campaignRepository: ref.watch(
        campaignRepositoryProvider,
      ),
    );
