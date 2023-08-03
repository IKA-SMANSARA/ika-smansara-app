// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDetailDTO _$$_CustomerDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_CustomerDetailDTO(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      billingAddress: json['billingAddress'] == null
          ? null
          : BillingAddressDTO.fromJson(
              json['billingAddress'] as Map<String, dynamic>,
            ),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddressDTO.fromJson(
              json['shippingAddress'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$_CustomerDetailDTOToJson(
  _$_CustomerDetailDTO instance,
) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'billingAddress': instance.billingAddress,
      'shippingAddress': instance.shippingAddress,
    };
