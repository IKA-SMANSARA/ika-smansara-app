// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_status_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTransactionStatusResponseDTO
    _$$_PaymentTransactionStatusResponseDTOFromJson(
            Map<String, dynamic> json) =>
        _$_PaymentTransactionStatusResponseDTO(
          merchantOrderId: json['merchantOrderId'] as String?,
          reference: json['reference'] as String?,
          amount: json['amount'] as String?,
          fee: json['fee'] as String?,
          statusCode: json['statusCode'] as String?,
          statusMessage: json['statusMessage'] as String?,
        );

Map<String, dynamic> _$$_PaymentTransactionStatusResponseDTOToJson(
        _$_PaymentTransactionStatusResponseDTO instance) =>
    <String, dynamic>{
      'merchantOrderId': instance.merchantOrderId,
      'reference': instance.reference,
      'amount': instance.amount,
      'fee': instance.fee,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
