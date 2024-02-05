import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category.dart';
import 'package:ika_smansara/domain/usecases/get_campaigns_by_category/get_campaigns_by_category_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_campaigns_by_category_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_campaigns_by_category_list_provider.g.dart';

@riverpod
Future<List<CampaignDocument>> getCampaignsByCategoryList(
  GetCampaignsByCategoryListRef ref, {
  required String categoryName,
}) async {
  GetCampaignsByCategory getCampaignsByCategory = ref.read(
    getCampaignsByCategoryProvider,
  );

  var result = await getCampaignsByCategory(
    GetCampaignsByCategoryParams(categoryName: categoryName),
  );

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => const [],
  };
}
