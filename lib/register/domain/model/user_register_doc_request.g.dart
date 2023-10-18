// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_doc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterDocRequest _$$_UserRegisterDocRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UserRegisterDocRequest(
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

Map<String, dynamic> _$$_UserRegisterDocRequestToJson(
        _$_UserRegisterDocRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'data': instance.data,
      'permissions': instance.permissions,
    };
