// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'transaction_document_request_dto.freezed.dart';
part 'transaction_document_request_dto.g.dart';

@freezed
class TransactionDocumentRequestDTO with _$TransactionDocumentRequestDTO {
  factory TransactionDocumentRequestDTO({
    @JsonKey(name: 'documentId') String? documentId,
    @JsonKey(name: 'data') TransactionDataDocumentRequestDTO? data,
    @JsonKey(name: 'permissions') @Default([]) List<String> permissions,
  }) = _TransactionDocumentRequestDTO;

  factory TransactionDocumentRequestDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TransactionDocumentRequestDTOFromJson(json);
}
