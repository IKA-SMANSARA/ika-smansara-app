// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodResponse _$$_PaymentMethodResponseFromJson(
  Map<String, dynamic> json,
) =>
    _$_PaymentMethodResponse(
      paymentFee: (json['paymentFee'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : PaymentFee.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      responseCode: json['responseCode'] as String?,
      responseMessage: json['responseMessage'] as String?,
    );

Map<String, dynamic> _$$_PaymentMethodResponseToJson(
  _$_PaymentMethodResponse instance,
) =>
    <String, dynamic>{
      'paymentFee': instance.paymentFee,
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
    };
