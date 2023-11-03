// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_item_response_dto.freezed.dart';
part 'carousel_item_response_dto.g.dart';

@freezed
class CarouselItemResponseDTO with _$CarouselItemResponseDTO {
  factory CarouselItemResponseDTO({
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$permissions') List<String>? permissions,
  }) = _CarouselItemResponseDTO;

  factory CarouselItemResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CarouselItemResponseDTOFromJson(json);
}
