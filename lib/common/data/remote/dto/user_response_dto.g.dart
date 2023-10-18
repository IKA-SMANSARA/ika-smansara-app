// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponseDTO _$$_UserResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_UserResponseDTO(
      id: json[r'$id'] as String?,
      createdAt: json[r'$createdAt'] as String?,
      updatedAt: json[r'$updatedAt'] as String?,
      name: json['name'] as String?,
      registration: json['registration'] as String?,
      status: json['status'] as bool? ?? false,
      labels: json['labels'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      accessedAt: json['accessedAt'] as String?,
    );

Map<String, dynamic> _$$_UserResponseDTOToJson(_$_UserResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createdAt,
      r'$updatedAt': instance.updatedAt,
      'name': instance.name,
      'registration': instance.registration,
      'status': instance.status,
      'labels': instance.labels,
      'email': instance.email,
      'phone': instance.phone,
      'accessedAt': instance.accessedAt,
    };
