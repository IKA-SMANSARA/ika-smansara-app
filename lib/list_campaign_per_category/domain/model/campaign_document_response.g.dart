// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignDocumentResponseImpl _$$CampaignDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignDocumentResponseImpl(
      id: json['id'] as String?,
      campaignName: json['campaignName'] as String?,
      goalAmount: json['goalAmount'] as int?,
      currentAmount: json['currentAmount'] as int?,
      dateEndCampaign: json['dateEndCampaign'] as String?,
      photoThumbnail: json['photoThumbnail'] as String?,
    );

Map<String, dynamic> _$$CampaignDocumentResponseImplToJson(
        _$CampaignDocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaignName': instance.campaignName,
      'goalAmount': instance.goalAmount,
      'currentAmount': instance.currentAmount,
      'dateEndCampaign': instance.dateEndCampaign,
      'photoThumbnail': instance.photoThumbnail,
    };
