import 'dart:io';

import 'package:ika_smansara/domain/entities/campaign_request.dart';

class CreateCampaignParams {
  final CampaignRequest campaignRequest;
  final File imageFile;

  CreateCampaignParams({
    required this.campaignRequest,
    required this.imageFile,
  });
}
