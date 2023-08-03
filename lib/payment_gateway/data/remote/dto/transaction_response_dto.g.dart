// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionResponseDTO _$$_TransactionResponseDTOFromJson(
  Map<String, dynamic> json,
) =>
    _$_TransactionResponseDTO(
      merchantCode: json['merchantCode'] as String?,
      reference: json['reference'] as String?,
      paymentUrl: json['paymentUrl'] as String?,
      statusCode: json['statusCode'] as String?,
      statusMessage: json['statusMessage'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$$_TransactionResponseDTOToJson(
  _$_TransactionResponseDTO instance,
) =>
    <String, dynamic>{
      'merchantCode': instance.merchantCode,
      'reference': instance.reference,
      'paymentUrl': instance.paymentUrl,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'Message': instance.message,
    };
