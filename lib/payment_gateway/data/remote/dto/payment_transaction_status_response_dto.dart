// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_transaction_status_response_dto.freezed.dart';
part 'payment_transaction_status_response_dto.g.dart';

@freezed
class PaymentTransactionStatusResponseDTO
    with _$PaymentTransactionStatusResponseDTO {
  const factory PaymentTransactionStatusResponseDTO({
    @JsonKey(name: 'merchantOrderId') String? merchantOrderId,
    @JsonKey(name: 'reference') String? reference,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'fee') String? fee,
    @JsonKey(name: 'statusCode') String? statusCode,
    @JsonKey(name: 'statusMessage') String? statusMessage,
  }) = _PaymentTransactionStatusResponseDTO;

  factory PaymentTransactionStatusResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentTransactionStatusResponseDTOFromJson(json);
}
