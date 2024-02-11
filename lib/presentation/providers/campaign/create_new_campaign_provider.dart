import 'dart:io';

import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_campaign_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_new_campaign_provider.g.dart';

@riverpod
Future<CampaignDocument?> createNewCampaign(
  CreateNewCampaignRef ref, {
  required CampaignRequest campaignRequest,
  File? imageFile,
}) async {
  CreateCampaign createCampaign = ref.read(createCampaignUseCaseProvider);

  var result = await createCampaign(
    CreateCampaignParams(
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
