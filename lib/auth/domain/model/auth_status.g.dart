// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatusImpl _$$AuthStatusImplFromJson(Map<String, dynamic> json) =>
    _$AuthStatusImpl(
      authStatus: json['authStatus'] as bool? ?? false,
      authMessage: json['authMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthStatusImplToJson(_$AuthStatusImpl instance) =>
    <String, dynamic>{
      'authStatus': instance.authStatus,
      'authMessage': instance.authMessage,
    };
