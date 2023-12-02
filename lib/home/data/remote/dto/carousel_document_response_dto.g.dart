// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarouselDocumentResponseDTOImpl _$$CarouselDocumentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CarouselDocumentResponseDTOImpl(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              CarouselItemResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarouselDocumentResponseDTOImplToJson(
        _$CarouselDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
