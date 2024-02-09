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
    MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
    MidtransCreditCardRequest? midtransCreditCardRequest,
    List<MidtransItemRequest>? midtransItemRequest,
    MidtransCustomerDetailsRequest? midtransCustomerDetailsRequest,
  }) = _MidtransTransactionRequest;

  factory MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =>
      MidtransTransactionRequest(
        midtransCreditCardRequest: json['credit_card'],
        midtransCustomerDetailsRequest: json['customer_details'],
        midtransItemRequest: json['item_details'],
        midtransTransactionDetailsRequest: json['transaction_details'],
      );
}
