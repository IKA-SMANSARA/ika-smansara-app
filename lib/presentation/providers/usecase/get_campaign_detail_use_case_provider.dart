import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaign_detail_use_case_provider.g.dart';

@riverpod
GetCampaignDetail getCampaignDetailUseCase(GetCampaignDetailUseCaseRef ref) =>
    GetCampaignDetail(
      campaignRepository: ref.watch(campaignRepositoryProvider),
    );
