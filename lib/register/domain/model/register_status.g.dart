// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterStatusImpl _$$RegisterStatusImplFromJson(Map<String, dynamic> json) =>
    _$RegisterStatusImpl(
      registerStatus: json['registerStatus'] as bool? ?? false,
      registerMessage: json['registerMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$RegisterStatusImplToJson(
        _$RegisterStatusImpl instance) =>
    <String, dynamic>{
      'registerStatus': instance.registerStatus,
      'registerMessage': instance.registerMessage,
    };
