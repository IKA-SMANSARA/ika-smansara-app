// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MidtransTransactionRequestDTO _$$_MidtransTransactionRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_MidtransTransactionRequestDTO(
      midtransTransactionDetailsRequestDTO: json['transaction_details'] == null
          ? null
          : MidtransTransactionDetailsRequestDTO.fromJson(
              json['transaction_details'] as Map<String, dynamic>),
      midtransCreditCardRequestDTO: json['credit_card'] == null
          ? null
          : MidtransCreditCardRequestDTO.fromJson(
              json['credit_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MidtransTransactionRequestDTOToJson(
        _$_MidtransTransactionRequestDTO instance) =>
    <String, dynamic>{
      'transaction_details': instance.midtransTransactionDetailsRequestDTO,
      'credit_card': instance.midtransCreditCardRequestDTO,
    };
