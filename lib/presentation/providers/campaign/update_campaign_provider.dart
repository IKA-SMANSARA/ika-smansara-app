// ignore_for_file: unused_result

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign.dart';
import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign_params.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/update_campaign_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_campaign_provider.g.dart';

@riverpod
class UpdateCampaignDoc extends _$UpdateCampaignDoc {
  @override
  Future<CampaignDocument?> build() async => null;

  Future<void> updateCampaignDoc({
    required CampaignRequest campaignRequest,
    File? imageFile,
  }) async {
    UpdateCampaign updateCampaign = ref.read(updateCampaignUseCaseProvider);

    var result = await updateCampaign(
      UpdateCampaignParams(
        campaignRequest: campaignRequest,
        imageFile: imageFile,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        ref.refresh(
          getCampaignDetailProvider(
            campaignId: data.id ?? '',
          ),
        );
        ref.read(routerProvider).pop();
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
