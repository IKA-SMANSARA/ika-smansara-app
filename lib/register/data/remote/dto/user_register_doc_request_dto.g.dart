// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_doc_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterDocRequestDTO _$$_UserRegisterDocRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_UserRegisterDocRequestDTO(
      documentId: json['documentId'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileDocRequestDTO.fromJson(
              json['data'] as Map<String, dynamic>),
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserRegisterDocRequestDTOToJson(
        _$_UserRegisterDocRequestDTO instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };