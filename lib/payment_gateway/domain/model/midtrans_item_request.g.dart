// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MidtransItemRequestImpl _$$MidtransItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MidtransItemRequestImpl(
      id: json['id'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MidtransItemRequestImplToJson(
        _$MidtransItemRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'name': instance.name,
    };
