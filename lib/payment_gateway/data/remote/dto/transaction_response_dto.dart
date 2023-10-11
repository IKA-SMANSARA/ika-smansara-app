// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_dto.freezed.dart';

part 'transaction_response_dto.g.dart';

@freezed
class TransactionResponseDTO with _$TransactionResponseDTO {
  const factory TransactionResponseDTO({
    @JsonKey(name: 'merchantCode') String? merchantCode,
    @JsonKey(name: 'reference') String? reference,
    @JsonKey(name: 'paymentUrl') String? paymentUrl,
    @JsonKey(name: 'statusCode') String? statusCode,
    @JsonKey(name: 'statusMessage') String? statusMessage,
    @JsonKey(name: 'Message') String? message,
  }) = _TransactionResponseDTO;

  factory TransactionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseDTOFromJson(json);
}
