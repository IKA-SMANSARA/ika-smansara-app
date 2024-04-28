// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/domain/entities/payout_item_request.dart';

part 'payout_request.freezed.dart';
part 'payout_request.g.dart';

@freezed
class PayoutRequest with _$PayoutRequest {
  factory PayoutRequest({
    @JsonKey(name: 'payouts') List<PayoutItemRequest>? payouts,
  }) = _PayoutRequest;

  factory PayoutRequest.fromJson(Map<String, dynamic> json) =>
      _$PayoutRequestFromJson(json);
}
