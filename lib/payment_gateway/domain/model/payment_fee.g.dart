// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentFee _$$_PaymentFeeFromJson(Map<String, dynamic> json) =>
    _$_PaymentFee(
      paymentMethod: json['paymentMethod'] as String?,
      paymentName: json['paymentName'] as String?,
      paymentImage: json['paymentImage'] as String?,
      totalFee: json['totalFee'] as String?,
    );

Map<String, dynamic> _$$_PaymentFeeToJson(_$_PaymentFee instance) =>
    <String, dynamic>{
      'paymentMethod': instance.paymentMethod,
      'paymentName': instance.paymentName,
      'paymentImage': instance.paymentImage,
      'totalFee': instance.totalFee,
    };
