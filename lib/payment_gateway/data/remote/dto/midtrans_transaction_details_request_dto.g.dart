// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_details_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransTransactionDetailsRequestDTOImpl
    _$$MidtransTransactionDetailsRequestDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$MidtransTransactionDetailsRequestDTOImpl(
          orderId: json['order_id'] as String?,
          grossAmount: json['gross_amount'] as int?,
        );

Map<String, dynamic> _$$MidtransTransactionDetailsRequestDTOImplToJson(
        _$MidtransTransactionDetailsRequestDTOImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'gross_amount': instance.grossAmount,
    };
