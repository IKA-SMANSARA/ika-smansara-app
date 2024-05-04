// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/domain/entities/payout_item_response.dart';

part 'payout_response.freezed.dart';
part 'payout_response.g.dart';

@freezed
class PayoutResponse with _$PayoutResponse {
  factory PayoutResponse({
    @JsonKey(name: 'payouts') List<PayoutItemResponse>? payouts,
  }) = _PayoutResponse;

  factory PayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$PayoutResponseFromJson(json);
}
