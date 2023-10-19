// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterStatus _$$_RegisterStatusFromJson(Map<String, dynamic> json) =>
    _$_RegisterStatus(
      registerStatus: json['registerStatus'] as bool? ?? false,
      registerMessage: json['registerMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$_RegisterStatusToJson(_$_RegisterStatus instance) =>
    <String, dynamic>{
      'registerStatus': instance.registerStatus,
      'registerMessage': instance.registerMessage,
    };
