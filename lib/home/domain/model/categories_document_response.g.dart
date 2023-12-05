// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDocumentResponseImpl _$$CategoriesDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesDocumentResponseImpl(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CategoryItemResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoriesDocumentResponseImplToJson(
        _$CategoriesDocumentResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
