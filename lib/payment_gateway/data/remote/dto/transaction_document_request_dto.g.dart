// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_document_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDocumentRequestDTOImpl
    _$$TransactionDocumentRequestDTOImplFromJson(Map<String, dynamic> json) =>
        _$TransactionDocumentRequestDTOImpl(
          documentId: json['documentId'] as String?,
          data: json['data'] == null
              ? null
              : TransactionDataDocumentRequestDTO.fromJson(
                  json['data'] as Map<String, dynamic>),
          permissions: (json['permissions'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$TransactionDocumentRequestDTOImplToJson(
        _$TransactionDocumentRequestDTOImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
