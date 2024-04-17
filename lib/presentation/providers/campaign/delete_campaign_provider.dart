// ignore_for_file: unused_result

import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/delete_campaign/delete_campaign.dart';
import 'package:ika_smansara/domain/usecases/delete_campaign/delete_campaign_params.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/delete_campaign_use_case_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_campaign_provider.g.dart';

@riverpod
class DeleteCampaignDoc extends _$DeleteCampaignDoc {
  @override
  Future<CampaignDocument?> build() async => null;

  Future<void> deleteCampaign({
    required CampaignRequest campaignRequest,
  }) async {
    DeleteCampaign deleteCampaign = ref.read(deleteCampaignUseCaseProvider);

    var result = await deleteCampaign(DeleteCampaignParams(
      campaignRequest: campaignRequest,
    ));

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        var userId = ref.read(userDataProvider).valueOrNull?.authKey;
        ref.refresh(
          getCampaignByUserIdProvider(
            userId: userId ?? '',
          ),
        );
        ref.read(routerProvider).replace(
              "/my-campaigns-list-page",
              extra: userId,
            );
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
