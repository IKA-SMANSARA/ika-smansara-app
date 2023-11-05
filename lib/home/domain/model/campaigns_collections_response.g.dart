// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignsCollectionsResponse _$$_CampaignsCollectionsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignsCollectionsResponse(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CampaignDocumentResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CampaignsCollectionsResponseToJson(
        _$_CampaignsCollectionsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
