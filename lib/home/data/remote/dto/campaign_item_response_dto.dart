// ignore_for_file: use_raw_strings, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_item_response_dto.freezed.dart';
part 'campaign_item_response_dto.g.dart';

@freezed
class CampaignItemResponseDTO with _$CampaignItemResponseDTO {
  factory CampaignItemResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$permissions') List<String>? permissions,
    @JsonKey(name: 'campaignName') String? campaignName,
    @JsonKey(name: 'campaignDescription') String? campaignDescription,
    @JsonKey(name: 'goalAmount') int? goalAmount,
    @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
    @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
    @JsonKey(name: 'backerCount') int? backerCount,
    @JsonKey(name: 'categories') List<String>? categories,
  }) = _CampaignItemResponseDTO;

  factory CampaignItemResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CampaignItemResponseDTOFromJson(json);
}
