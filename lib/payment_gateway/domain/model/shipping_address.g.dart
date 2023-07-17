// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingAddress _$$_ShippingAddressFromJson(Map<String, dynamic> json) =>
    _$_ShippingAddress(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$$_ShippingAddressToJson(_$_ShippingAddress instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
    };
