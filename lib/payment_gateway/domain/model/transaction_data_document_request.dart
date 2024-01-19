import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data_document_request.freezed.dart';
part 'transaction_data_document_request.g.dart';

@freezed
class TransactionDataDocumentRequest with _$TransactionDataDocumentRequest {
  factory TransactionDataDocumentRequest({
    String? orderId,
    String? campaignId,
    int? amount,
    String? paymentStatus,
    String? userId,
    String? campaignName,
    String? campaignImage,
  }) = _TransactionDataDocumentRequest;

  factory TransactionDataDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataDocumentRequestFromJson(json);
}
