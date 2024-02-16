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
    String? bankAccountNumber,
    @Default(false) bool isDefault,
  }) = _UserAccountBankRequest;

  factory UserAccountBankRequest.fromJson(Map<String, dynamic> json) =>
      UserAccountBankRequest(
        bankAccountNumber: json['bankAccountNumber'],
        bankName: json['bankName'],
        realUserName: json['realUserName'],
        userId: json['userId'],
        userName: json['userId'],
        isDefault: json['isDefault'],
      );
}
