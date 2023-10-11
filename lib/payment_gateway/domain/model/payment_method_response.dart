// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'payment_method_response.freezed.dart';

part 'payment_method_response.g.dart';

@freezed
class PaymentMethodResponse with _$PaymentMethodResponse {
  const factory PaymentMethodResponse({
    List<PaymentFee?>? paymentFee,
    String? responseCode,
    String? responseMessage,
  }) = _PaymentMethodResponse;

  factory PaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseFromJson(json);
}
