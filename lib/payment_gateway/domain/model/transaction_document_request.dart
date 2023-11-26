import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'transaction_document_request.freezed.dart';
part 'transaction_document_request.g.dart';

@freezed
class TransactionDocumentRequest with _$TransactionDocumentRequest {
  factory TransactionDocumentRequest({
    String? documentId,
    TransactionDataDocumentRequest? data,
    @Default([]) List<String> permissions,
  }) = _TransactionDocumentRequest;

  factory TransactionDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionDocumentRequestFromJson(json);
}
