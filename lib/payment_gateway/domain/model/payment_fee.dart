// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_fee.freezed.dart';

part 'payment_fee.g.dart';

@freezed
class PaymentFee with _$PaymentFee {
  const factory PaymentFee({
    @JsonKey(name: 'paymentMethod') String? paymentMethod,
    @JsonKey(name: 'paymentName') String? paymentName,
    @JsonKey(name: 'paymentImage') String? paymentImage,
    @JsonKey(name: 'totalFee') String? totalFee,
  }) = _PaymentFee;

  factory PaymentFee.fromJson(Map<String, dynamic> json) =>
      _$PaymentFeeFromJson(json);
}
