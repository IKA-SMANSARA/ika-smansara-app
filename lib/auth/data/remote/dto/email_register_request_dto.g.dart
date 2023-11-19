// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailRegisterRequestDTOImpl _$$EmailRegisterRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailRegisterRequestDTOImpl(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EmailRegisterRequestDTOImplToJson(
        _$EmailRegisterRequestDTOImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
