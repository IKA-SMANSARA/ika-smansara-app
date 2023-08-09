// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodResponseDTO _$$_PaymentMethodResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentMethodResponseDTO(
      paymentFee: (json['paymentFee'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PaymentFeeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseCode: json['responseCode'] as String?,
      responseMessage: json['responseMessage'] as String?,
    );

Map<String, dynamic> _$$_PaymentMethodResponseDTOToJson(
        _$_PaymentMethodResponseDTO instance) =>
    <String, dynamic>{
      'paymentFee': instance.paymentFee,
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
    };
