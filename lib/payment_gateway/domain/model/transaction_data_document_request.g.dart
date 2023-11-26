// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataDocumentRequestImpl
    _$$TransactionDataDocumentRequestImplFromJson(Map<String, dynamic> json) =>
        _$TransactionDataDocumentRequestImpl(
          orderId: json['orderId'] as String?,
          campaignId: json['campaignId'] as String?,
          amount: json['amount'] as int?,
          paymentStatus: json['paymentStatus'] as String?,
          userId: json['userId'] as String?,
        );

Map<String, dynamic> _$$TransactionDataDocumentRequestImplToJson(
        _$TransactionDataDocumentRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'campaignId': instance.campaignId,
      'amount': instance.amount,
      'paymentStatus': instance.paymentStatus,
      'userId': instance.userId,
    };
