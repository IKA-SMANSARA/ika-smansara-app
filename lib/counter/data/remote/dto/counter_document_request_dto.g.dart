// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_document_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterDocumentRequestDTO _$$_CounterDocumentRequestDTOFromJson(
  Map<String, dynamic> json,
) =>
    _$_CounterDocumentRequestDTO(
      documentId: json['documentId'] as String?,
      data: json['data'] == null
          ? null
          : CounterDataDocumentRequestDTO.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_CounterDocumentRequestDTOToJson(
  _$_CounterDocumentRequestDTO instance,
) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
