// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_session_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailSessionResponseDTO _$$_EmailSessionResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_EmailSessionResponseDTO(
      id: json[r'$id'] as String?,
      createAt: json[r'$createdAt'] as String?,
      userId: json['userId'] as String?,
      expire: json['expire'] as String?,
      provider: json['provider'] as String?,
      providerUid: json['providerUid'] as String?,
      providerAccessToken: json['providerAccessToken'] as String?,
      providerTokenExpiry: json['providerTokenExpiry'] as String?,
      providerRefreshToken: json['providerRefreshToken'] as String?,
      ip: json['ip'] as String?,
      osCode: json['osCode'] as String?,
      onName: json['osName'] as String?,
      osVersion: json['osVersion'] as String?,
      clientType: json['clientType'] as String?,
      clientCode: json['clientCode'] as String?,
      clientName: json['clientName'] as String?,
      clientVersion: json['clientVersion'] as String?,
      clientEngine: json['clientEngine'] as String?,
      clientEngineVersion: json['clientEngineVersion'] as String?,
      deviceName: json['deviceName'] as String?,
      deviceBrand: json['deviceBrand'] as String?,
      deviceModel: json['deviceModel'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      current: json['current'] as String?,
      message: json['message'] as String?,
      code: json['code'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_EmailSessionResponseDTOToJson(
        _$_EmailSessionResponseDTO instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      r'$createdAt': instance.createAt,
      'userId': instance.userId,
      'expire': instance.expire,
      'provider': instance.provider,
      'providerUid': instance.providerUid,
      'providerAccessToken': instance.providerAccessToken,
      'providerTokenExpiry': instance.providerTokenExpiry,
      'providerRefreshToken': instance.providerRefreshToken,
      'ip': instance.ip,
      'osCode': instance.osCode,
      'osName': instance.onName,
      'osVersion': instance.osVersion,
      'clientType': instance.clientType,
      'clientCode': instance.clientCode,
      'clientName': instance.clientName,
      'clientVersion': instance.clientVersion,
      'clientEngine': instance.clientEngine,
      'clientEngineVersion': instance.clientEngineVersion,
      'deviceName': instance.deviceName,
      'deviceBrand': instance.deviceBrand,
      'deviceModel': instance.deviceModel,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'current': instance.current,
      'message': instance.message,
      'code': instance.code,
      'type': instance.type,
      'version': instance.version,
    };
