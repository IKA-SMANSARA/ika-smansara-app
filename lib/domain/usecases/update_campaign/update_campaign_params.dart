import 'dart:io';

import 'package:ika_smansara/domain/entities/campaign_request.dart';

class UpdateCampaignParams {
  final CampaignRequest campaignRequest;
  final File imageFile;

  UpdateCampaignParams({
    required this.campaignRequest,
    required this.imageFile,
  });
}
