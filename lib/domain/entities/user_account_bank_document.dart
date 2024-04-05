import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_bank_document.freezed.dart';
part 'user_account_bank_document.g.dart';

@freezed
class UserAccountBankDocument with _$UserAccountBankDocument {
  factory UserAccountBankDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic>? permissions,
    String? userId,
    String? userName,
    String? realUserName,
    String? bankName,
    String? bankCode,
    String? bankAccountNumber,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isDefault,
  }) = _UserAccountBankDocument;

  factory UserAccountBankDocument.fromJson(Map<String, dynamic> json) =>
      UserAccountBankDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        bankAccountNumber: json['bankAccountNumber'],
        bankName: json['bankName'],
        bankCode: json['bankCode'],
        realUserName: json['realUserName'],
        userId: json['userId'],
        userName: json['userName'],
        isDeleted: json['isDeleted'],
        isDefault: json['isDefault'],
      );
}
