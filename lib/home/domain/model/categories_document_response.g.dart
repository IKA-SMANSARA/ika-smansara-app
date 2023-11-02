// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesDocumentResponse _$$_CategoriesDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesDocumentResponse(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => CategoryItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoriesDocumentResponseToJson(
        _$_CategoriesDocumentResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
