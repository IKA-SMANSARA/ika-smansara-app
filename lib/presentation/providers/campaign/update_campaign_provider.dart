import 'dart:io';

import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign.dart';
import 'package:ika_smansara/domain/usecases/update_campaign/update_campaign_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/update_campaign_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_campaign_provider.g.dart';

@riverpod
Future<CampaignDocument?> updateCampaignDocument(
  UpdateCampaignDocumentRef ref, {
  required CampaignRequest campaignRequest,
  File? imageFile,
}) async {
  UpdateCampaign updateCampaign = ref.read(updateCampaignUseCaseProvider);

  var result = await updateCampaign(
    UpdateCampaignParams(
      campaignRequest: campaignRequest,
      imageFile: imageFile as File,
    ),
  );

  Constants.logger.d(result);

  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}
