// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_response_dto.freezed.dart';
part 'midtrans_transaction_response_dto.g.dart';

@freezed
class MidtransTransactionResponseDTO with _$MidtransTransactionResponseDTO {
  const factory MidtransTransactionResponseDTO({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'redirect_url') String? redirectUrl,
  }) = _MidtransTransactionResponseDTO;

  factory MidtransTransactionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MidtransTransactionResponseDTOFromJson(json);
}
