// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_item_response.freezed.dart';
part 'payout_item_response.g.dart';

@freezed
class PayoutItemResponse with _$PayoutItemResponse {
  factory PayoutItemResponse({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'reference_no') String? referenceNo,
  }) = _PayoutItemResponse;

  factory PayoutItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PayoutItemResponseFromJson(json);
}
