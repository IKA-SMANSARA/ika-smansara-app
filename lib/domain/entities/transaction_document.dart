import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_document.freezed.dart';
part 'transaction_document.g.dart';

@freezed
class TransactionDocument with _$TransactionDocument {
  factory TransactionDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic>? permissions,
    String? campaignId,
    @Default(0) int? amount,
    String? paymentStatus,
    String? userId,
    String? campaignName,
    String? campaignImage,
    String? userName,
    @Default(0) int? paymentFee,
    String? bank,
    String? vaNumber,
    String? expiryTime,
    String? transactionTime,
    String? paymentType,
    String? paymentCode,
    String? note,
  }) = _TransactionDocument;

  factory TransactionDocument.fromJson(Map<String, dynamic> json) =>
      TransactionDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        amount: json['amount'],
        campaignId: json['campaignId'],
        campaignImage: json['campaignImage'],
        campaignName: json['campaignName'],
        paymentStatus: json['paymentStatus'],
        userId: json['userId'],
        userName: json['userName'],
        paymentFee: json['paymentFee'],
        bank: json['bank'],
        expiryTime: json['expiryTime'],
        paymentCode: json['paymentCode'],
        paymentType: json['paymentType'],
        transactionTime: json['transactionTime'],
        vaNumber: json['vaNumber'],
        note: json['note'],
      );
}
