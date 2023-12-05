// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentResponseImpl _$$DocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentResponseImpl(
      id: json['id'] as String?,
      collectionId: json['collectionId'] as String?,
      databaseId: json['databaseId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DocumentResponseImplToJson(
        _$DocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'databaseId': instance.databaseId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'permissions': instance.permissions,
    };
