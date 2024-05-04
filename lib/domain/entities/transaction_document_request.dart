// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_document_request.freezed.dart';
part 'transaction_document_request.g.dart';

@freezed
class TransactionDocumentRequest with _$TransactionDocumentRequest {
  factory TransactionDocumentRequest({
    @JsonKey(name: '\$id') String? id,
    String? campaignId,
    @Default(0) int? amount,
    String? paymentStatus,
    String? userId,
    String? campaignName,
    String? campaignImage,
    String? userName,
    @Default(0) int? paymentFee,
    String? note,
  }) = _TransactionDocumentRequest;

  factory TransactionDocumentRequest.fromJson(Map<String, dynamic> json) =>
      TransactionDocumentRequest(
        amount: json['amount'],
        campaignId: json['campaignId'],
        campaignImage: json['campaignImage'],
        campaignName: json['campaignName'],
        paymentStatus: json['paymentStatus'],
        userId: json['userId'],
        userName: json['userName'],
        paymentFee: json['paymentFee'],
        note: json['note'],
      );
}
