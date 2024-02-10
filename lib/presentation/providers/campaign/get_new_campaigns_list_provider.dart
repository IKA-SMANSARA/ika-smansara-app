import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_new_campaigns/get_new_campaigns.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_new_campaigns_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_new_campaigns_list_provider.g.dart';

@Riverpod(keepAlive: true)
class GetNewCampaignsList extends _$GetNewCampaignsList {
  @override
  FutureOr<List<CampaignDocument>> build() => [];

  Future<void> getNewCampaignsData() async {
    state = const AsyncLoading();

    GetNewCampaigns getNewCampaigns = ref.read(getNewCampaignsUseCaseProvider);

    var result = await getNewCampaigns(null);

    switch (result) {
      case Success(value: final newCampaigns):
        state = AsyncData(newCampaigns);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = AsyncData(state.valueOrNull ?? []);
    }
  }
}
