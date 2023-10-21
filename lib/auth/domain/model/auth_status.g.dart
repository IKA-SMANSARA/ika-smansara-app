// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthStatus _$$_AuthStatusFromJson(Map<String, dynamic> json) =>
    _$_AuthStatus(
      authStatus: json['authStatus'] as bool? ?? false,
      authMessage: json['authMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthStatusToJson(_$_AuthStatus instance) =>
    <String, dynamic>{
      'authStatus': instance.authStatus,
      'authMessage': instance.authMessage,
    };
