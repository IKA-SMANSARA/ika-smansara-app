// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MidtransTransactionRequest _$$_MidtransTransactionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_MidtransTransactionRequest(
      midtransTransactionDetailsRequest:
          json['midtransTransactionDetailsRequest'] == null
              ? null
              : MidtransTransactionDetailsRequest.fromJson(
                  json['midtransTransactionDetailsRequest']
                      as Map<String, dynamic>),
      midtransCreditCardRequest: json['midtransCreditCardRequest'] == null
          ? null
          : MidtransCreditCardRequest.fromJson(
              json['midtransCreditCardRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MidtransTransactionRequestToJson(
        _$_MidtransTransactionRequest instance) =>
    <String, dynamic>{
      'midtransTransactionDetailsRequest':
          instance.midtransTransactionDetailsRequest,
      'midtransCreditCardRequest': instance.midtransCreditCardRequest,
    };
