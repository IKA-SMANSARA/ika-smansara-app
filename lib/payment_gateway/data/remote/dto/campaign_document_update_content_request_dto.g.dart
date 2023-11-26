// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_document_update_content_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignDocumentUpdateContentRequestDTOImpl
    _$$CampaignDocumentUpdateContentRequestDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$CampaignDocumentUpdateContentRequestDTOImpl(
          data: json['data'] == null
              ? null
              : CampaignDocumentDataContentRequestDTO.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CampaignDocumentUpdateContentRequestDTOImplToJson(
        _$CampaignDocumentUpdateContentRequestDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
