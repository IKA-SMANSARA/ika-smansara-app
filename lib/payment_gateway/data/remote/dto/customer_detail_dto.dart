// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'customer_detail_dto.freezed.dart';

part 'customer_detail_dto.g.dart';

@freezed
class CustomerDetailDTO with _$CustomerDetailDTO {
  const factory CustomerDetailDTO({
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'billingAddress') BillingAddressDTO? billingAddress,
    @JsonKey(name: 'shippingAddress') ShippingAddressDTO? shippingAddress,
  }) = _CustomerDetailDTO;

  factory CustomerDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailDTOFromJson(json);
}
