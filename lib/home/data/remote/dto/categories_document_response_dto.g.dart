// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesDocumentResponseDTO _$$_CategoriesDocumentResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesDocumentResponseDTO(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              CategoryItemResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoriesDocumentResponseDTOToJson(
        _$_CategoriesDocumentResponseDTO instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
