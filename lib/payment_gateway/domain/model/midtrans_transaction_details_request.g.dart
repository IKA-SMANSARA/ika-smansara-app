// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_transaction_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransTransactionDetailsRequestImpl
    _$$MidtransTransactionDetailsRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$MidtransTransactionDetailsRequestImpl(
          orderId: json['orderId'] as String?,
          grossAmount: json['grossAmount'] as int?,
        );

Map<String, dynamic> _$$MidtransTransactionDetailsRequestImplToJson(
        _$MidtransTransactionDetailsRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'grossAmount': instance.grossAmount,
    };
