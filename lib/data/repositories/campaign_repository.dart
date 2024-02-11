import 'dart:io';

import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class CampaignRepository {
  Future<Result<List<CampaignDocument>>> getNewCampaigns();

  Future<Result<List<CampaignDocument>>> getCampaignByCategories({
    required String categoryName,
  });

  Future<Result<CampaignDocument>> getCampaignDetail({
    required String campaignId,
  });

  Future<Result<CampaignDocument>> createCampaign({
    required CampaignRequest campaignRequest,
    File? imageFile,
  });

  Future<Result<CampaignDocument>> updateCampaign({
    required CampaignRequest campaignRequest,
    File? imageFile,
  });

  Future<Result<CampaignDocument>> deleteCampaign({
    required CampaignRequest campaignRequest,
  });
}
