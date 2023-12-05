// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseDTOImpl _$$ErrorResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseDTOImpl(
      message: json['message'] as String?,
      code: json['code'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$ErrorResponseDTOImplToJson(
        _$ErrorResponseDTOImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'type': instance.type,
      'version': instance.version,
    };
