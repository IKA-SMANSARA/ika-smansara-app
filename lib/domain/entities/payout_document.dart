// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_document.freezed.dart';
part 'payout_document.g.dart';

@freezed
class PayoutDocument with _$PayoutDocument {
  factory PayoutDocument({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$permissions') @Default([]) List<dynamic>? permissions,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'campaignId') String? campaignId,
    @JsonKey(name: 'payoutStatus') String? payoutStatus,
    @JsonKey(name: 'payoutReferenceNo') String? payoutReferenceNo,
    @JsonKey(name: 'realName') String? realName,
    @JsonKey(name: 'bankCode') String? bankCode,
    @JsonKey(name: 'accountBankNumber') String? accountBankNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'notes') String? notes,
  }) = _PayoutDocument;

  factory PayoutDocument.fromJson(Map<String, dynamic> json) =>
      _$PayoutDocumentFromJson(json);
}
