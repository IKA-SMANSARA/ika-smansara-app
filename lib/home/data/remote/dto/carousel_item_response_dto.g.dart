// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarouselItemResponseDTO _$$_CarouselItemResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CarouselItemResponseDTO(
      id: json[r'$id'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_CarouselItemResponseDTOToJson(
        _$_CarouselItemResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
      'imageUrl': instance.imageUrl,
    };
