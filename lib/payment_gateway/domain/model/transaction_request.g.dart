// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionRequest _$$_TransactionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionRequest(
      merchantCode: json['merchantCode'] as String?,
      paymentAmount: json['paymentAmount'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      merchantOrderId: json['merchantOrderId'] as String?,
      productDetails: json['productDetails'] as String?,
      additionalParam: json['additionalParam'] as String?,
      merchantUserInfo: json['merchantUserInfo'] as String?,
      customerVaName: json['customerVaName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      itemDetails: (json['itemDetails'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ItemDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerDetail: json['customerDetail'] == null
          ? null
          : CustomerDetail.fromJson(
              json['customerDetail'] as Map<String, dynamic>),
      callbackUrl: json['callbackUrl'] as String?,
      returnUrl: json['returnUrl'] as String?,
      signature: json['signature'] as String?,
      expiryPeriod: json['expiryPeriod'] as int?,
    );

Map<String, dynamic> _$$_TransactionRequestToJson(
        _$_TransactionRequest instance) =>
    <String, dynamic>{
      'merchantCode': instance.merchantCode,
      'paymentAmount': instance.paymentAmount,
      'paymentMethod': instance.paymentMethod,
      'merchantOrderId': instance.merchantOrderId,
      'productDetails': instance.productDetails,
      'additionalParam': instance.additionalParam,
      'merchantUserInfo': instance.merchantUserInfo,
      'customerVaName': instance.customerVaName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'itemDetails': instance.itemDetails,
      'customerDetail': instance.customerDetail,
      'callbackUrl': instance.callbackUrl,
      'returnUrl': instance.returnUrl,
      'signature': instance.signature,
      'expiryPeriod': instance.expiryPeriod,
    };
