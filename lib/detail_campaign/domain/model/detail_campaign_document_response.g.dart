// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_campaign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailCampaignDocumentResponseImpl
    _$$DetailCampaignDocumentResponseImplFromJson(Map<String, dynamic> json) =>
        _$DetailCampaignDocumentResponseImpl(
          id: json['id'] as String?,
          campaignName: json['campaignName'] as String?,
          goalAmount: json['goalAmount'] as int?,
          dateStartCampaign: json['dateStartCampaign'] as String?,
          dateEndCampaign: json['dateEndCampaign'] as String?,
          isDeleted: json['isDeleted'] as bool? ?? false,
          isActive: json['isActive'] as bool? ?? false,
          photoThumbnail: json['photoThumbnail'] as String?,
          backerCount: json['backerCount'] as int?,
          categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          currentAmount: json['currentAmount'] as int?,
          campaignDescription: json['campaignDescription'] as String?,
        );

Map<String, dynamic> _$$DetailCampaignDocumentResponseImplToJson(
        _$DetailCampaignDocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
