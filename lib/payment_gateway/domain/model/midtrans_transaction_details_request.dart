// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_details_request.freezed.dart';
part 'midtrans_transaction_details_request.g.dart';

@freezed
class MidtransTransactionDetailsRequest
    with _$MidtransTransactionDetailsRequest {
  const factory MidtransTransactionDetailsRequest({
    String? orderId,
    String? grossAmount,
  }) = _MidtransTransactionDetailsRequest;

  factory MidtransTransactionDetailsRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MidtransTransactionDetailsRequestFromJson(json);
}
