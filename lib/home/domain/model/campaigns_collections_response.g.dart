// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignsCollectionsResponseImpl _$$CampaignsCollectionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignsCollectionsResponseImpl(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CampaignDocumentResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CampaignsCollectionsResponseImplToJson(
        _$CampaignsCollectionsResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
