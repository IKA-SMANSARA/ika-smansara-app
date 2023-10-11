// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_fee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentFeeDTO _$$_PaymentFeeDTOFromJson(Map<String, dynamic> json) =>
    _$_PaymentFeeDTO(
      paymentMethod: json['paymentMethod'] as String?,
      paymentName: json['paymentName'] as String?,
      paymentImage: json['paymentImage'] as String?,
      totalFee: json['totalFee'] as String?,
    );

Map<String, dynamic> _$$_PaymentFeeDTOToJson(_$_PaymentFeeDTO instance) =>
    <String, dynamic>{
      'paymentMethod': instance.paymentMethod,
      'paymentName': instance.paymentName,
      'paymentImage': instance.paymentImage,
      'totalFee': instance.totalFee,
    };
