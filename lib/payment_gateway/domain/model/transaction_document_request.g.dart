// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDocumentRequestImpl _$$TransactionDocumentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDocumentRequestImpl(
      documentId: json['documentId'] as String?,
      data: json['data'] == null
          ? null
          : TransactionDataDocumentRequest.fromJson(
              json['data'] as Map<String, dynamic>),
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionDocumentRequestImplToJson(
        _$TransactionDocumentRequestImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
