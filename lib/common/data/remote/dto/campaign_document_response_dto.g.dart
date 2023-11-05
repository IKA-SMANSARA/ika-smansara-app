// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignItemResponseDTO _$$_CampaignItemResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignItemResponseDTO(
      id: json[r'$id'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      campaignName: json['campaignName'] as String?,
      campaignDescription: json['campaignDescription'] as String?,
      goalAmount: json['goalAmount'] as int?,
      currentAmount: json['currentAmount'] as int?,
      dateStartCampaign: json['dateStartCampaign'] as String?,
      dateEndCampaign: json['dateEndCampaign'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      isActive: json['isActive'] as bool?,
      photoThumbnail: json['photoThumbnail'] as String?,
      backerCount: json['backerCount'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CampaignItemResponseDTOToJson(
        _$_CampaignItemResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'goalAmount': instance.goalAmount,
      'currentAmount': instance.currentAmount,
      'dateStartCampaign': instance.dateStartCampaign,
      'dateEndCampaign': instance.dateEndCampaign,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
      'photoThumbnail': instance.photoThumbnail,
      'backerCount': instance.backerCount,
      'categories': instance.categories,
    };
