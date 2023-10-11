// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'midtrans_transaction_request_dto.freezed.dart';
part 'midtrans_transaction_request_dto.g.dart';

@freezed
class MidtransTransactionRequestDTO with _$MidtransTransactionRequestDTO {
  const factory MidtransTransactionRequestDTO({
    @JsonKey(name: 'transaction_details')
    MidtransTransactionDetailsRequestDTO? midtransTransactionDetailsRequestDTO,
    @JsonKey(name: 'credit_card')
    MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO,
  }) = _MidtransTransactionRequestDTO;

  factory MidtransTransactionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$MidtransTransactionRequestDTOFromJson(json);
}
