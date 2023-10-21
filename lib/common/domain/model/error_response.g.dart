// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      message: json['message'] as String?,
      code: json['code'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'type': instance.type,
      'version': instance.version,
    };
