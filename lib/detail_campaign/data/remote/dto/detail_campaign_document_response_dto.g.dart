// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_campaign_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailCampaignDocumentResponseDTOImpl
    _$$DetailCampaignDocumentResponseDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$DetailCampaignDocumentResponseDTOImpl(
          id: json[r'$id'] as String?,
          createdAt: json[r'$createdAt'] as String?,
          updatedAt: json[r'$updatedAt'] as String?,
          databaseId: json[r'$databaseId'] as String?,
          collectionId: json[r'$collectionId'] as String?,
          permissions: (json[r'$permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          campaignName: json['campaignName'] as String?,
          goalAmount: json['goalAmount'] as int?,
          dateStartCampaign: json['dateStartCampaign'] as String?,
          dateEndCampaign: json['dateEndCampaign'] as String?,
          isDeleted: json['isDeleted'] as bool?,
          isActive: json['isActive'] as bool?,
          photoThumbnail: json['photoThumbnail'] as String?,
          backerCount: json['backerCount'] as int?,
          categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          currentAmount: json['currentAmount'] as int?,
          campaignDescription: json['campaignDescription'] as String?,
        );

Map<String, dynamic> _$$DetailCampaignDocumentResponseDTOImplToJson(
        _$DetailCampaignDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
      'campaignName': instance.campaignName,
      'goalAmount': instance.goalAmount,
      'dateStartCampaign': instance.dateStartCampaign,
      'dateEndCampaign': instance.dateEndCampaign,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
      'photoThumbnail': instance.photoThumbnail,
      'backerCount': instance.backerCount,
      'categories': instance.categories,
      'currentAmount': instance.currentAmount,
      'campaignDescription': instance.campaignDescription,
    };
