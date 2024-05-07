// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/domain/entities/midtrans_credit_card_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_customer_details_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_item_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_details_request.dart';

part 'midtrans_transaction_request.freezed.dart';
part 'midtrans_transaction_request.g.dart';

@freezed
class MidtransTransactionRequest with _$MidtransTransactionRequest {
  factory MidtransTransactionRequest({
    @JsonKey(name: 'transaction_details')
    MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
    @JsonKey(name: 'credit_card')
    MidtransCreditCardRequest? midtransCreditCardRequest,
    @JsonKey(name: 'item_details')
    List<MidtransItemRequest>? midtransItemRequest,
    @JsonKey(name: 'customer_details')
    MidtransCustomerDetailsRequest? midtransCustomerDetailsRequest,
    @JsonKey(name: 'enabled_payments')
    @Default(['other_qris'])
    List<String> enabledPayments,
  }) = _MidtransTransactionRequest;

  factory MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$MidtransTransactionRequestFromJson(json);
}
