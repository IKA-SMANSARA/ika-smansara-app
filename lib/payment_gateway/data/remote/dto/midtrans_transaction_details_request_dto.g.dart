// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_details_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MidtransTransactionDetailsRequestDTO
    _$$_MidtransTransactionDetailsRequestDTOFromJson(
            Map<String, dynamic> json) =>
        _$_MidtransTransactionDetailsRequestDTO(
          orderId: json['order_id'] as String?,
          grossAmount: json['gross_amount'] as String?,
        );

Map<String, dynamic> _$$_MidtransTransactionDetailsRequestDTOToJson(
        _$_MidtransTransactionDetailsRequestDTO instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'gross_amount': instance.grossAmount,
    };
