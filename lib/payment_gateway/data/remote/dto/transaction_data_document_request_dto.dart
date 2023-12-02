// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data_document_request_dto.freezed.dart';
part 'transaction_data_document_request_dto.g.dart';

@freezed
class TransactionDataDocumentRequestDTO
    with _$TransactionDataDocumentRequestDTO {
  factory TransactionDataDocumentRequestDTO({
    @JsonKey(name: 'orderId') String? orderId,
    @JsonKey(name: 'campaignId') String? campaignId,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'paymentStatus') String? paymentStatus,
    @JsonKey(name: 'userId') String? userId,
  }) = _TransactionDataDocumentRequestDTO;

  factory TransactionDataDocumentRequestDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TransactionDataDocumentRequestDTOFromJson(json);
}
