import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category.dart';
import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_campaigns_by_category_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_campaigns_by_category_list_provider.g.dart';

@riverpod
Future<List<CampaignDocument>> getListCampaignsByCategory(
  GetListCampaignsByCategoryRef ref, {
  required String categoryName,
}) async {
  GetCampaignsByCategory getCampaignsByCategory =
      ref.read(getCampaignsByCategoryUseCaseProvider);

  var result = await getCampaignsByCategory(
    GetCampaignsByCategoryParams(categoryName: categoryName),
  );

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => const [],
  };
}
