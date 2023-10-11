// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_request.freezed.dart';

part 'payment_method_request.g.dart';

@freezed
class PaymentMethodRequest with _$PaymentMethodRequest {
  const factory PaymentMethodRequest({
    String? merchantCode,
    int? amount,
    String? datetime,
    String? signature,
  }) = _PaymentMethodRequest;

  factory PaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodRequestFromJson(json);
}
