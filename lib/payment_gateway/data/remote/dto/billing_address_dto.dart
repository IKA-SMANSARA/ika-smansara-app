// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_address_dto.freezed.dart';

part 'billing_address_dto.g.dart';

@freezed
class BillingAddressDTO with _$BillingAddressDTO {
  const factory BillingAddressDTO({
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'postalCode') String? postalCode,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'countryCode') String? countryCode,
  }) = _BillingAddressDTO;

  factory BillingAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressDTOFromJson(json);
}
