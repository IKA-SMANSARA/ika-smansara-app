// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailRegisterRequest _$$_EmailRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_EmailRegisterRequest(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_EmailRegisterRequestToJson(
        _$_EmailRegisterRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
