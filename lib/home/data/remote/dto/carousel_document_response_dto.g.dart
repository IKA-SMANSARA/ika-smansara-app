// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarouselDocumentResponseDTO _$$_CarouselDocumentResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CarouselDocumentResponseDTO(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              CarouselItemResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarouselDocumentResponseDTOToJson(
        _$_CarouselDocumentResponseDTO instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
