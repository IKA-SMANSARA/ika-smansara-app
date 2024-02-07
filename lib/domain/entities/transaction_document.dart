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
    @Default(0.0) double? amount,
    String? paymentStatus,
    String? userId,
    String? campaignName,
    String? campaignImage,
    String? userName,
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
      );
}
