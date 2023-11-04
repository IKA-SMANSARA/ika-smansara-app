// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_response_dto.freezed.dart';
part 'category_item_response_dto.g.dart';

@freezed
class CategoryItemResponseDTO with _$CategoryItemResponseDTO {
  factory CategoryItemResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$permissions') List<String>? permissions,
    @JsonKey(name: 'nameCategory') String? nameCategory,
    @JsonKey(name: 'categoryIcon') String? categoryIcon,
  }) = _CategoryItemResponseDTO;

  factory CategoryItemResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemResponseDTOFromJson(json);
}
