// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_item_request.freezed.dart';
part 'payout_item_request.g.dart';

@freezed
class PayoutItemRequest with _$PayoutItemRequest {

  factory PayoutItemRequest({
    @JsonKey(name: 'beneficiary_name') String? beneficiaryName,
    @JsonKey(name: 'beneficiary_account') String? beneficiaryAccount,
    @JsonKey(name: 'beneficiary_bank') String? beneficiaryBank,
    @JsonKey(name: 'beneficiary_email') String? beneficiaryEmail,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'notes') String? notes,
  }) = _PayoutItemRequest;

  factory PayoutItemRequest.fromJson(Map<String, dynamic> json) => _$PayoutItemRequestFromJson(json);
}