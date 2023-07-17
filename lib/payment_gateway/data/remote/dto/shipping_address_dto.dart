// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address_dto.freezed.dart';

part 'shipping_address_dto.g.dart';

@freezed
class ShippingAddressDTO with _$ShippingAddressDTO {
  const factory ShippingAddressDTO({
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'postalCode') String? postalCode,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'countryCode') String? countryCode,
  }) = _ShippingAddressDTO;

  factory ShippingAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressDTOFromJson(json);
}
