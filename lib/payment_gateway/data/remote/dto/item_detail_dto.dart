// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail_dto.freezed.dart';

part 'item_detail_dto.g.dart';

@freezed
class ItemDetailDTO with _$ItemDetailDTO {
  const factory ItemDetailDTO({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'quantity') int? quantity,
  }) = _ItemDetailDTO;

  factory ItemDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailDTOFromJson(json);
}
