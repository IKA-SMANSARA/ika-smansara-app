// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_my_donation_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailMyDonationDocumentResponseImpl
    _$$DetailMyDonationDocumentResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$DetailMyDonationDocumentResponseImpl(
          orderId: json['orderId'] as String?,
          campaignId: json['campaignId'] as String?,
          campaignName: json['campaignName'] as String?,
          campaignImage: json['campaignImage'] as String?,
          amount: json['amount'] as int?,
          paymentStatus: json['paymentStatus'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] as String?,
        );

Map<String, dynamic> _$$DetailMyDonationDocumentResponseImplToJson(
        _$DetailMyDonationDocumentResponseImpl instance) =>
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
