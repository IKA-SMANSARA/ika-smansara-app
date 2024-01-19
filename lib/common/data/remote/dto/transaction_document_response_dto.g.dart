// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_document_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDocumentResponseDTOImpl
    _$$TransactionDocumentResponseDTOImplFromJson(Map<String, dynamic> json) =>
        _$TransactionDocumentResponseDTOImpl(
          id: json[r'$id'] as String?,
          createdAt: json[r'$createdAt'] as String?,
          updatedAt: json[r'$updatedAt'] as String?,
          databaseId: json[r'$databaseId'] as String?,
          collectionId: json[r'$collectionId'] as String?,
          permissions: (json[r'$permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          orderId: json['orderId'] as String?,
          campaignId: json['campaignId'] as String?,
          campaignName: json['campaignName'] as String?,
          campaignImage: json['campaignImage'] as String?,
          amount: json['amount'] as int?,
          paymentStatus: json['paymentStatus'] as String?,
          userId: json['userId'] as String?,
        );

Map<String, dynamic> _$$TransactionDocumentResponseDTOImplToJson(
        _$TransactionDocumentResponseDTOImpl instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
      r'$permissions': instance.permissions,
      'orderId': instance.orderId,
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignImage': instance.campaignImage,
      'amount': instance.amount,
      'paymentStatus': instance.paymentStatus,
      'userId': instance.userId,
    };
