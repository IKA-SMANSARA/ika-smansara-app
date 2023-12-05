// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterDocumentResponseDTOImpl _$$CounterDocumentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CounterDocumentResponseDTOImpl(
      id: json[r'$id'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      counterValue: json['counter-value'] as String?,
    );

Map<String, dynamic> _$$CounterDocumentResponseDTOImplToJson(
        _$CounterDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$collectionId': instance.collectionId,
      r'$databaseId': instance.databaseId,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$permissions': instance.permissions,
      'counter-value': instance.counterValue,
    };
