// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_response.freezed.dart';
part 'category_item_response.g.dart';

@freezed
class CategoryItemResponse with _$CategoryItemResponse {
  factory CategoryItemResponse({
    @JsonKey(name: 'nameCategory') String? nameCategory,
    @JsonKey(name: 'categoryIcon') String? categoryIcon,
  }) = _CategoryItemResponse;

  factory CategoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemResponseFromJson(json);
}
