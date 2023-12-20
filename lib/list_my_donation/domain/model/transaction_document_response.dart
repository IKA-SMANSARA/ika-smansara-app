import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_document_response.freezed.dart';
part 'transaction_document_response.g.dart';

@freezed
class TransactionDocumentResponse with _$TransactionDocumentResponse {
  factory TransactionDocumentResponse({
    String? orderId,
    String? campaignId,
    String? campaignName,
    String? campaignImage,
    int? amount,
    String? paymentStatus,
    String? userId,
    String? createdAt,
    String? documentId,
  }) = _TransactionDocumentResponse;

  factory TransactionDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDocumentResponseFromJson(json);
}
