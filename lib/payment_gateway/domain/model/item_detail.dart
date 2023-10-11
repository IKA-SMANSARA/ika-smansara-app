// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail.freezed.dart';

part 'item_detail.g.dart';

@freezed
class ItemDetail with _$ItemDetail {
  const factory ItemDetail({
    String? name,
    int? price,
    int? quantity,
  }) = _ItemDetail;

  factory ItemDetail.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailFromJson(json);
}
