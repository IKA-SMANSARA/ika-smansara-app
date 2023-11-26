// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_update_content_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignDocumentUpdateContentRequestImpl
    _$$CampaignDocumentUpdateContentRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CampaignDocumentUpdateContentRequestImpl(
          data: json['data'] == null
              ? null
              : CampaignDocumentDataContentRequest.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CampaignDocumentUpdateContentRequestImplToJson(
        _$CampaignDocumentUpdateContentRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
