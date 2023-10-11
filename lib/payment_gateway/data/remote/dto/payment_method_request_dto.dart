// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_request_dto.freezed.dart';

part 'payment_method_request_dto.g.dart';

@freezed
class PaymentMethodRequestDTO with _$PaymentMethodRequestDTO {
  const factory PaymentMethodRequestDTO({
    @JsonKey(name: 'merchantCode') String? merchantCode,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'datetime') String? datetime,
    @JsonKey(name: 'signature') String? signature,
  }) = _PaymentMethodRequestDTO;

  factory PaymentMethodRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodRequestDTOFromJson(json);
}
