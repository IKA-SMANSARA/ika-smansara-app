// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_details_request_dto.freezed.dart';
part 'midtrans_transaction_details_request_dto.g.dart';

@freezed
class MidtransTransactionDetailsRequestDTO
    with _$MidtransTransactionDetailsRequestDTO {
  const factory MidtransTransactionDetailsRequestDTO({
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'gross_amount') int? grossAmount,
  }) = _MidtransTransactionDetailsRequestDTO;

  factory MidtransTransactionDetailsRequestDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MidtransTransactionDetailsRequestDTOFromJson(json);
}
