// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'customer_detail.freezed.dart';

part 'customer_detail.g.dart';

@freezed
class CustomerDetail with _$CustomerDetail {
  const factory CustomerDetail({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    BillingAddress? billingAddress,
    ShippingAddress? shippingAddress,
  }) = _CustomerDetail;

  factory CustomerDetail.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailFromJson(json);
}
