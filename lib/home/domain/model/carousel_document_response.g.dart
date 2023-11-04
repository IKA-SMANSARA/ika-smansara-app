// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarouselDocumentResponse _$$_CarouselDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CarouselDocumentResponse(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CarouselItemResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CarouselDocumentResponseToJson(
        _$_CarouselDocumentResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
