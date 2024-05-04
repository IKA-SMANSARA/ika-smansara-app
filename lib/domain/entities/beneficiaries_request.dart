// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiaries_request.freezed.dart';
part 'beneficiaries_request.g.dart';

@freezed
class BeneficiariesRequest with _$BeneficiariesRequest {
  factory BeneficiariesRequest({
    String? name,
    String? account,
    String? bank,
    @JsonKey(name: 'alias_name') String? aliasName,
    String? email,
  }) = _BeneficiariesRequest;

  factory BeneficiariesRequest.fromJson(Map<String, dynamic> json) =>
      BeneficiariesRequest(
        account: json['account'],
        bank: json['bank'],
        email: json['email'],
        name: json['name'],
      );
}
