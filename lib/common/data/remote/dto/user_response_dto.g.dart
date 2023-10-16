// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponseDTO _$$_UserResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_UserResponseDTO(
      id: json[r'$id'] as String?,
      createAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
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

Map<String, dynamic> _$$_UserResponseDTOToJson(_$_UserResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createAt,
      r'$updatedAt': instance.updatedAt,
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
