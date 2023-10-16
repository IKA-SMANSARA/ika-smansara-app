// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      id: json['id'] as String?,
      createAt: json['createAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      hash: json['hash'] as String?,
      registration: json['registration'] as String?,
      status: json['status'] as bool?,
      label: json['label'] as String?,
      passwordUpdate: json['passwordUpdate'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'password': instance.password,
      'hash': instance.hash,
      'registration': instance.registration,
      'status': instance.status,
      'label': instance.label,
      'passwordUpdate': instance.passwordUpdate,
      'email': instance.email,
      'phone': instance.phone,
    };
