// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_transaction_status_response.freezed.dart';
part 'payment_transaction_status_response.g.dart';

@freezed
class PaymentTransactionStatusResponse with _$PaymentTransactionStatusResponse {
  const factory PaymentTransactionStatusResponse({
    @JsonKey(name: 'merchantOrderId') String? merchantOrderId,
    @JsonKey(name: 'reference') String? reference,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'statusCode') String? statusCode,
    @JsonKey(name: 'statusMessage') String? statusMessage,
  }) = _PaymentTransactionStatusResponse;

  factory PaymentTransactionStatusResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentTransactionStatusResponseFromJson(json);
}
