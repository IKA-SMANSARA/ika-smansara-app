// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';

part 'transaction_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    String? merchantCode,
    String? reference,
    String? paymentUrl,
    String? statusCode,
    String? statusMessage,
    String? message,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
