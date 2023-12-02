// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_collections_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignsDocumentResponseDTOImpl _$$CampaignsDocumentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignsDocumentResponseDTOImpl(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              CampaignDocumentResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CampaignsDocumentResponseDTOImplToJson(
        _$CampaignsDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
