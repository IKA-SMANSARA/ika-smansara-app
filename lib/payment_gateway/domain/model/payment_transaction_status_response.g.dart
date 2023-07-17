// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTransactionStatusResponse
    _$$_PaymentTransactionStatusResponseFromJson(Map<String, dynamic> json) =>
        _$_PaymentTransactionStatusResponse(
          merchantOrderId: json['merchantOrderId'] as String?,
          reference: json['reference'] as String?,
          amount: json['amount'] as String?,
          fee: json['fee'] as String?,
          statusCode: json['statusCode'] as String?,
          statusMessage: json['statusMessage'] as String?,
        );

Map<String, dynamic> _$$_PaymentTransactionStatusResponseToJson(
        _$_PaymentTransactionStatusResponse instance) =>
    <String, dynamic>{
      'merchantOrderId': instance.merchantOrderId,
      'reference': instance.reference,
      'amount': instance.amount,
      'fee': instance.fee,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
