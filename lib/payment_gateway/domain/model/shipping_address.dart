// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';

part 'shipping_address.g.dart';

@freezed
class ShippingAddress with _$ShippingAddress {
  const factory ShippingAddress({
    String? firstName,
    String? lastName,
    String? address,
    String? city,
    String? postalCode,
    String? phone,
    String? countryCode,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
