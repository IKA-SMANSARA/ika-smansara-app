// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_details_request.freezed.dart';
part 'midtrans_transaction_details_request.g.dart';

@freezed
class MidtransTransactionDetailsRequest
    with _$MidtransTransactionDetailsRequest {
  factory MidtransTransactionDetailsRequest({
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'gross_amount') int? grossAmount,
  }) = _MidtransTransactionDetailsRequest;

  factory MidtransTransactionDetailsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MidtransTransactionDetailsRequestFromJson(json);
}
