// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentResponseDTOImpl _$$DocumentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentResponseDTOImpl(
      id: json[r'$id'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DocumentResponseDTOImplToJson(
        _$DocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$collectionId': instance.collectionId,
      r'$databaseId': instance.databaseId,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$permissions': instance.permissions,
    };
