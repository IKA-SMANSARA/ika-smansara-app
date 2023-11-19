// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarouselDocumentResponseImpl _$$CarouselDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CarouselDocumentResponseImpl(
      total: json['total'] as int?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  CarouselItemResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CarouselDocumentResponseImplToJson(
        _$CarouselDocumentResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
