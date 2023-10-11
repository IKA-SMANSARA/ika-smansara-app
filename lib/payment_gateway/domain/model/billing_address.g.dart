// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillingAddress _$$_BillingAddressFromJson(Map<String, dynamic> json) =>
    _$_BillingAddress(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$$_BillingAddressToJson(_$_BillingAddress instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
    };
