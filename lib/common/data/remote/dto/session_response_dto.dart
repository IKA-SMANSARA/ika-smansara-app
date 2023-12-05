// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_response_dto.freezed.dart';
part 'session_response_dto.g.dart';

@freezed
class SessionResponseDTO with _$SessionResponseDTO {
  factory SessionResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createdAt,
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
    @JsonKey(name: 'current') bool? current,
  }) = _SessionResponseDTO;

  factory SessionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseDTOFromJson(json);
}
