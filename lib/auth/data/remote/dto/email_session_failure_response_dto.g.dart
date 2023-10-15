// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_session_failure_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailSessionFailureResponseDTO _$$_EmailSessionFailureResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_EmailSessionFailureResponseDTO(
      message: json['message'] as String?,
      code: json['code'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_EmailSessionFailureResponseDTOToJson(
        _$_EmailSessionFailureResponseDTO instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'type': instance.type,
      'version': instance.version,
    };
