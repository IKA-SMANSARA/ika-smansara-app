// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'midtrans_transaction_request.freezed.dart';
part 'midtrans_transaction_request.g.dart';

@freezed
class MidtransTransactionRequest with _$MidtransTransactionRequest {
  const factory MidtransTransactionRequest({
    MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
    MidtransCreditCardRequest? midtransCreditCardRequest,
  }) = _MidtransTransactionRequest;

  factory MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$MidtransTransactionRequestFromJson(json);
}
