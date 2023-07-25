// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_response_dto.freezed.dart';

part 'email_session_response_dto.g.dart';

@freezed
class EmailSessionResponseDTO with _$EmailSessionResponseDTO {
  const factory EmailSessionResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createAt,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'expire') String? expire,
    @JsonKey(name: 'provider') String? provider,
    @JsonKey(name: 'providerUid') String? providerUid,
    @JsonKey(name: 'providerAccessToken') String? providerAccessToken,
    @JsonKey(name: 'providerTokenExpiry') String? providerTokenExpiry,
    @JsonKey(name: 'providerRefreshToken') String? providerRefreshToken,
    @JsonKey(name: 'ip') String? ip,
    @JsonKey(name: 'osCode') String? osCode,
    @JsonKey(name: 'osName') String? onName,
    @JsonKey(name: 'osVersion') String? osVersion,
    @JsonKey(name: 'clientType') String? clientType,
    @JsonKey(name: 'clientCode') String? clientCode,
    @JsonKey(name: 'clientName') String? clientName,
    @JsonKey(name: 'clientVersion') String? clientVersion,
    @JsonKey(name: 'clientEngine') String? clientEngine,
    @JsonKey(name: 'clientEngineVersion') String? clientEngineVersion,
    @JsonKey(name: 'deviceName') String? deviceName,
    @JsonKey(name: 'deviceBrand') String? deviceBrand,
    @JsonKey(name: 'deviceModel') String? deviceModel,
    @JsonKey(name: 'countryCode') String? countryCode,
    @JsonKey(name: 'countryName') String? countryName,
    @JsonKey(name: 'current') String? current,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
  }) = _EmailSessionResponseDTO;

  factory EmailSessionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionResponseDTOFromJson(json);
}
