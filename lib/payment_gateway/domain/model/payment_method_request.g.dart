// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodRequest _$$_PaymentMethodRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentMethodRequest(
      merchantCode: json['merchantCode'] as String?,
      amount: json['amount'] as int?,
      datetime: json['datetime'] as String?,
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$$_PaymentMethodRequestToJson(
        _$_PaymentMethodRequest instance) =>
    <String, dynamic>{
      'merchantCode': instance.merchantCode,
      'amount': instance.amount,
      'datetime': instance.datetime,
      'signature': instance.signature,
    };
