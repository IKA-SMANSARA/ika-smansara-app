// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryItemResponseDTO _$$_CategoryItemResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryItemResponseDTO(
      id: json[r'$id'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nameCategory: json['nameCategory'] as String?,
      categoryIcon: json['categoryIcon'] as String?,
    );

Map<String, dynamic> _$$_CategoryItemResponseDTOToJson(
        _$_CategoryItemResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
      'nameCategory': instance.nameCategory,
      'categoryIcon': instance.categoryIcon,
    };
