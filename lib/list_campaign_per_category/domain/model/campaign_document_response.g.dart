// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignDocumentResponse _$$_CampaignDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignDocumentResponse(
      id: json['id'] as String?,
      campaignName: json['campaignName'] as String?,
      goalAmount: json['goalAmount'] as int?,
      currentAmount: json['currentAmount'] as int?,
      dateEndCampaign: json['dateEndCampaign'] as String?,
      photoThumbnail: json['photoThumbnail'] as String?,
    );

Map<String, dynamic> _$$_CampaignDocumentResponseToJson(
        _$_CampaignDocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaignName': instance.campaignName,
      'goalAmount': instance.goalAmount,
      'currentAmount': instance.currentAmount,
      'dateEndCampaign': instance.dateEndCampaign,
      'photoThumbnail': instance.photoThumbnail,
    };
