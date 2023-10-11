// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'transaction_request.freezed.dart';

part 'transaction_request.g.dart';

@freezed
class TransactionRequest with _$TransactionRequest {
  const factory TransactionRequest({
    String? merchantCode,
    String? paymentAmount,
    String? paymentMethod,
    String? merchantOrderId,
    String? productDetails,
    String? additionalParam,
    String? merchantUserInfo,
    String? customerVaName,
    String? email,
    String? phoneNumber,
    List<ItemDetail?>? itemDetails,
    CustomerDetail? customerDetail,
    String? callbackUrl,
    String? returnUrl,
    String? signature,
    int? expiryPeriod,
  }) = _TransactionRequest;

  factory TransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestFromJson(json);
}
