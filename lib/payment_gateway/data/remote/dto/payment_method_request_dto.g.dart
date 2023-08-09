// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodRequestDTO _$$_PaymentMethodRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentMethodRequestDTO(
      merchantCode: json['merchantCode'] as String?,
      amount: json['amount'] as int?,
      datetime: json['datetime'] as String?,
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$$_PaymentMethodRequestDTOToJson(
        _$_PaymentMethodRequestDTO instance) =>
    <String, dynamic>{
      'merchantCode': instance.merchantCode,
      'amount': instance.amount,
      'datetime': instance.datetime,
      'signature': instance.signature,
    };
