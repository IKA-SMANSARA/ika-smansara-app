// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDetail _$$_CustomerDetailFromJson(Map<String, dynamic> json) =>
    _$_CustomerDetail(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      billingAddress: json['billingAddress'] == null
          ? null
          : BillingAddress.fromJson(
              json['billingAddress'] as Map<String, dynamic>),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerDetailToJson(_$_CustomerDetail instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'billingAddress': instance.billingAddress,
      'shippingAddress': instance.shippingAddress,
    };
