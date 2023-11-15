import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

extension DetailCampaignDocumentResponseDTOExtension
    on DetailCampaignDocumentResponseDTO {
  DetailCampaignDocumentResponse toDetailCampaignDocumentResponse() =>
      DetailCampaignDocumentResponse(
        backerCount: backerCount,
        campaignDescription: campaignDescription,
        campaignName: campaignName,
        categories: categories,
        currentAmount: currentAmount,
        dateEndCampaign: dateEndCampaign,
        dateStartCampaign: dateStartCampaign,
        goalAmount: goalAmount,
        id: id,
        isActive: isActive,
        isDeleted: isDeleted,
        photoThumbnail: photoThumbnail,
      );
}
