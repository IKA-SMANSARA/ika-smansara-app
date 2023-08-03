// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterDocumentRequest _$$_CounterDocumentRequestFromJson(
  Map<String, dynamic> json,
) =>
    _$_CounterDocumentRequest(
      documentId: json['documentId'] as String?,
      data: json['data'] == null
          ? null
          : CounterDataDocumentRequest.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_CounterDocumentRequestToJson(
  _$_CounterDocumentRequest instance,
) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
