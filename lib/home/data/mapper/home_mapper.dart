import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';

extension CarouselItemResponseDTOExtension on CarouselItemResponseDTO {
  CarouselItemResponse toCarouselItemResponse() => CarouselItemResponse(
        imageUrl: imageUrl,
      );
}

extension CarouselDocumentResponseDTOExtension on CarouselDocumentResponseDTO {
  CarouselDocumentResponse toCarouselDocumentResponse() =>
      CarouselDocumentResponse(
        total: total,
        documents:
            documents?.map((data) => data.toCarouselItemResponse()).toList(),
      );
}

extension CategoryItemResponseDTOExtension on CategoryItemResponseDTO {
  CategoryItemResponse toCategoryItemResponse() => CategoryItemResponse(
        categoryIcon: categoryIcon,
        nameCategory: nameCategory,
      );
}

extension CategoriesDocumentResponseDTOExtension
    on CategoriesDocumentResponseDTO {
  CategoriesDocumentResponse toCategoriesDocumentResponse() =>
      CategoriesDocumentResponse(
        total: total,
        documents:
            documents?.map((data) => data.toCategoryItemResponse()).toList(),
      );
}

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
