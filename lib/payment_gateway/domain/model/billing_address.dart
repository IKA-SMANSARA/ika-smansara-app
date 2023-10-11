// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_address.freezed.dart';

part 'billing_address.g.dart';

@freezed
class BillingAddress with _$BillingAddress {
  const factory BillingAddress({
    String? firstName,
    String? lastName,
    String? address,
    String? city,
    String? postalCode,
    String? phone,
    String? countryCode,
  }) = _BillingAddress;

  factory BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressFromJson(json);
}
