// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignsDocumentResponse _$$_CampaignsDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignsDocumentResponse(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CampaignItemResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CampaignsDocumentResponseToJson(
        _$_CampaignsDocumentResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
