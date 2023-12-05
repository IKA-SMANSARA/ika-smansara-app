import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

extension CampaignDocumentResponseDTOExtension on CampaignDocumentResponseDTO {
  CampaignDocumentResponse toCampaignItemResponse() => CampaignDocumentResponse(
        id: id,
        campaignName: campaignName,
        dateEndCampaign: dateEndCampaign,
        goalAmount: goalAmount,
        photoThumbnail: photoThumbnail,
        currentAmount: currentAmount,
      );
}

extension CampaignsCollectionsResponseDTOExtension
    on CampaignsCollectionsResponseDTO {
  CampaignsCollectionsResponse toCampaignsCollectionsResponse() =>
      CampaignsCollectionsResponse(
        total: total,
        documents:
            documents?.map((data) => data.toCampaignItemResponse()).toList(),
      );
}
