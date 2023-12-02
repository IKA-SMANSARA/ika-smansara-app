// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransTransactionRequestImpl _$$MidtransTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MidtransTransactionRequestImpl(
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
      midtransItemDetailsRequest: (json['midtransItemDetailsRequest']
              as List<dynamic>?)
          ?.map((e) => MidtransItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      midtransCustomerDetailsRequest: json['midtransCustomerDetailsRequest'] ==
              null
          ? null
          : MidtransCustomerDetailsRequest.fromJson(
              json['midtransCustomerDetailsRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MidtransTransactionRequestImplToJson(
        _$MidtransTransactionRequestImpl instance) =>
    <String, dynamic>{
      'midtransTransactionDetailsRequest':
          instance.midtransTransactionDetailsRequest,
      'midtransCreditCardRequest': instance.midtransCreditCardRequest,
      'midtransItemDetailsRequest': instance.midtransItemDetailsRequest,
      'midtransCustomerDetailsRequest': instance.midtransCustomerDetailsRequest,
    };
