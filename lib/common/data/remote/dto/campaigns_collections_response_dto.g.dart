// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_collections_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignsDocumentResponseDTO _$$_CampaignsDocumentResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignsDocumentResponseDTO(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              CampaignDocumentResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CampaignsDocumentResponseDTOToJson(
        _$_CampaignsDocumentResponseDTO instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
