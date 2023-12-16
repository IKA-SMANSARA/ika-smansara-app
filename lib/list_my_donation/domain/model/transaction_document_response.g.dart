// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDocumentResponseImpl _$$TransactionDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDocumentResponseImpl(
      orderId: json['orderId'] as String?,
      campaignId: json['campaignId'] as String?,
      campaignName: json['campaignName'] as String?,
      campaignImage: json['campaignImage'] as String?,
      amount: json['amount'] as int?,
      paymentStatus: json['paymentStatus'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$TransactionDocumentResponseImplToJson(
        _$TransactionDocumentResponseImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignImage': instance.campaignImage,
      'amount': instance.amount,
      'paymentStatus': instance.paymentStatus,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
    };
