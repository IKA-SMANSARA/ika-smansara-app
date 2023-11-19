// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarouselItemResponseDTOImpl _$$CarouselItemResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CarouselItemResponseDTOImpl(
      imageUrl: json['imageUrl'] as String?,
      id: json[r'$id'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
      permissions: (json[r'$permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CarouselItemResponseDTOImplToJson(
        _$CarouselItemResponseDTOImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
    };
