import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaigns_by_category_use_case_provider.g.dart';

@riverpod
GetCampaignsByCategory getCampaignsByCategoryUseCase(GetCampaignsByCategoryUseCaseRef ref) =>
    GetCampaignsByCategory(
      campaignRepository: ref.watch(campaignRepositoryProvider),
    );
