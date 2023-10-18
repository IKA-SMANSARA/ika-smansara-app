// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentResponse _$$_DocumentResponseFromJson(Map<String, dynamic> json) =>
    _$_DocumentResponse(
      id: json['id'] as String?,
      collectionId: json['collectionId'] as String?,
      databaseId: json['databaseId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      permissions: json['permissions'] as String?,
    );

Map<String, dynamic> _$$_DocumentResponseToJson(_$_DocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'databaseId': instance.databaseId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'permissions': instance.permissions,
    };
