// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransTransactionRequestDTOImpl
    _$$MidtransTransactionRequestDTOImplFromJson(Map<String, dynamic> json) =>
        _$MidtransTransactionRequestDTOImpl(
          midtransTransactionDetailsRequestDTO:
              json['transaction_details'] == null
                  ? null
                  : MidtransTransactionDetailsRequestDTO.fromJson(
                      json['transaction_details'] as Map<String, dynamic>),
          midtransCreditCardRequestDTO: json['credit_card'] == null
              ? null
              : MidtransCreditCardRequestDTO.fromJson(
                  json['credit_card'] as Map<String, dynamic>),
          midtransItemDetailsRequestDTO: (json['item_details']
                  as List<dynamic>?)
              ?.map((e) =>
                  MidtransItemRequestDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
          midtransCustomerDetailsRequestDTO: json['customer_details'] == null
              ? null
              : MidtransCustomerDetailsRequestDTO.fromJson(
                  json['customer_details'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$MidtransTransactionRequestDTOImplToJson(
        _$MidtransTransactionRequestDTOImpl instance) =>
    <String, dynamic>{
      'transaction_details': instance.midtransTransactionDetailsRequestDTO,
      'credit_card': instance.midtransCreditCardRequestDTO,
      'item_details': instance.midtransItemDetailsRequestDTO,
      'customer_details': instance.midtransCustomerDetailsRequestDTO,
    };
