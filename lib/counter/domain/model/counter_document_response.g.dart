// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterDocumentResponse _$$_CounterDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CounterDocumentResponse(
      id: json['id'] as String?,
      collectionId: json['collectionId'] as String?,
      databaseId: json['databaseId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      counterValue: json['counterValue'] as String?,
    );

Map<String, dynamic> _$$_CounterDocumentResponseToJson(
        _$_CounterDocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'databaseId': instance.databaseId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'permissions': instance.permissions,
      'counterValue': instance.counterValue,
    };
