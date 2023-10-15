// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_session_failure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailSessionFailureResponse _$$_EmailSessionFailureResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EmailSessionFailureResponse(
      message: json['message'] as String?,
      code: json['code'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_EmailSessionFailureResponseToJson(
        _$_EmailSessionFailureResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'type': instance.type,
      'version': instance.version,
    };
