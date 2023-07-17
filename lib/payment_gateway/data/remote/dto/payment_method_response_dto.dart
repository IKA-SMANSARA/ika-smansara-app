// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'payment_method_response_dto.freezed.dart';

part 'payment_method_response_dto.g.dart';

@freezed
class PaymentMethodResponseDTO with _$PaymentMethodResponseDTO {
  const factory PaymentMethodResponseDTO({
    @JsonKey(name: 'paymentFee') List<PaymentFeeDTO?>? paymentFee,
    @JsonKey(name: 'responseCode') String? responseCode,
    @JsonKey(name: 'responseMessage') String? responseMessage,
  }) = _PaymentMethodResponseDTO;

  factory PaymentMethodResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseDTOFromJson(json);
}
