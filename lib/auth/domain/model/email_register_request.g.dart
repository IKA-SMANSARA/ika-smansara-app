// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailRegisterRequestImpl _$$EmailRegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailRegisterRequestImpl(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EmailRegisterRequestImplToJson(
        _$EmailRegisterRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
