import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_details_request.freezed.dart';
part 'midtrans_transaction_details_request.g.dart';

@freezed
class MidtransTransactionDetailsRequest
    with _$MidtransTransactionDetailsRequest {
  factory MidtransTransactionDetailsRequest({
    String? orderId,
    String? grossAmount,
  }) = _MidtransTransactionDetailsRequest;

  factory MidtransTransactionDetailsRequest.fromJson(
          Map<String, dynamic> json) =>
      MidtransTransactionDetailsRequest(
        orderId: json['order_id'],
        grossAmount: json['gross_amount'],
      );
}
