// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_fee_dto.freezed.dart';

part 'payment_fee_dto.g.dart';

@freezed
class PaymentFeeDTO with _$PaymentFeeDTO {
  const factory PaymentFeeDTO({
    @JsonKey(name: 'paymentMethod') String? paymentMethod,
    @JsonKey(name: 'paymentName') String? paymentName,
    @JsonKey(name: 'paymentImage') String? paymentImage,
    @JsonKey(name: 'totalFee') String? totalFee,
  }) = _PaymentFeeDTO;

  factory PaymentFeeDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentFeeDTOFromJson(json);
}
