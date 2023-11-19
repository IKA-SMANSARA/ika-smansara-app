// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDocumentResponseDTOImpl
    _$$CategoriesDocumentResponseDTOImplFromJson(Map<String, dynamic> json) =>
        _$CategoriesDocumentResponseDTOImpl(
          total: json['total'] as int?,
          documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CategoryItemResponseDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CategoriesDocumentResponseDTOImplToJson(
        _$CategoriesDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
