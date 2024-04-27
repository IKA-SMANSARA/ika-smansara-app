import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiaries_response.freezed.dart';
part 'beneficiaries_response.g.dart';

@freezed
class BeneficiariesResponse with _$BeneficiariesResponse {
  factory BeneficiariesResponse({
    String? status,
    String? name,
    String? account,
    String? bank,
    @JsonKey(name: 'alias_name') String? aliasName,
    String? email,
  }) = _BeneficiariesResponse;

  factory BeneficiariesResponse.fromJson(Map<String, dynamic> json) =>
      BeneficiariesResponse(
        account: json['account'],
        bank: json['bank'],
        email: json['email'],
        name: json['name'],
      );
}
