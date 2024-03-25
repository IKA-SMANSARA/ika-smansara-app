// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_bank_request.freezed.dart';
part 'user_account_bank_request.g.dart';

@freezed
class UserAccountBankRequest with _$UserAccountBankRequest {
  factory UserAccountBankRequest({
    @JsonKey(name: '\$id') String? id,
    String? userId,
    String? userName,
    String? realUserName,
    String? bankName,
    String? bankCode,
    String? bankAccountNumber,
    @Default(false) bool isDefault,
    @Default(false) bool isDeleted,
  }) = _UserAccountBankRequest;

  factory UserAccountBankRequest.fromJson(Map<String, dynamic> json) =>
      UserAccountBankRequest(
        bankAccountNumber: json['bankAccountNumber'],
        bankName: json['bankName'],
        bankCode: json['bankCode'],
        realUserName: json['realUserName'],
        userId: json['userId'],
        userName: json['userName'],
        isDefault: json['isDefault'],
        isDeleted: json['isDeleted'],
      );
}
