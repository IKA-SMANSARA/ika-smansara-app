// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionResponse _$$_TransactionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionResponse(
      merchantCode: json['merchantCode'] as String?,
      reference: json['reference'] as String?,
      paymentUrl: json['paymentUrl'] as String?,
      statusCode: json['statusCode'] as String?,
      statusMessage: json['statusMessage'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_TransactionResponseToJson(
        _$_TransactionResponse instance) =>
    <String, dynamic>{
      'merchantCode': instance.merchantCode,
      'reference': instance.reference,
      'paymentUrl': instance.paymentUrl,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'message': instance.message,
    };
