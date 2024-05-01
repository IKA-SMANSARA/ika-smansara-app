import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign_params.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_campaign_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_new_campaign_provider.g.dart';

@riverpod
class CreateNewCampaign extends _$CreateNewCampaign {
  @override
  Future<CampaignDocument?> build() async => null;

  Future<void> postNewCampaign({
    required CampaignRequest campaignRequest,
    required File? imageFile,
  }) async {
    state = AsyncValue.loading();
    
    CreateCampaign createCampaign = ref.read(createCampaignUseCaseProvider);

    var result = await createCampaign(
      CreateCampaignParams(
        campaignRequest: campaignRequest,
        imageFile: imageFile as File,
      ),
    );

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        ref
            .read(routerProvider)
            .pushReplacementNamed('campaign-detail-page', extra: data);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
