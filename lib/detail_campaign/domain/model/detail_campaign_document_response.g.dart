// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_campaign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailCampaignDocumentResponse _$$_DetailCampaignDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailCampaignDocumentResponse(
      id: json['id'] as String?,
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

Map<String, dynamic> _$$_DetailCampaignDocumentResponseToJson(
        _$_DetailCampaignDocumentResponse instance) =>
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
