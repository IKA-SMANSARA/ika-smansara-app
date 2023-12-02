// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_doc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterDocRequestImpl _$$UserRegisterDocRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterDocRequestImpl(
      documentId: json['documentId'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileDocRequest.fromJson(
              json['data'] as Map<String, dynamic>),
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserRegisterDocRequestImplToJson(
        _$UserRegisterDocRequestImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
