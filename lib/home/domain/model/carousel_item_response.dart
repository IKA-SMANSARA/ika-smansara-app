// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_item_response.freezed.dart';
part 'carousel_item_response.g.dart';

@freezed
class CarouselItemResponse with _$CarouselItemResponse {
  factory CarouselItemResponse({
    @JsonKey(name: 'imageUrl') String? imageUrl,
  }) = _CarouselItemResponse;

  factory CarouselItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CarouselItemResponseFromJson(json);
}
