// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_item_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransItemRequestDTOImpl _$$MidtransItemRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MidtransItemRequestDTOImpl(
      id: json['id'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MidtransItemRequestDTOImplToJson(
        _$MidtransItemRequestDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'name': instance.name,
    };
