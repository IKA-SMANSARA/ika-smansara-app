// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_response.freezed.dart';
part 'session_response.g.dart';

@freezed
class SessionResponse with _$SessionResponse {
  factory SessionResponse({
    String? id,
    String? createdAt,
    String? userId,
    String? expire,
    String? provider,
    String? providerUid,
    String? providerAccessToken,
    String? providerTokenExpiry,
    String? providerRefreshToken,
    String? ip,
    String? osCode,
    String? onName,
    String? osVersion,
    String? clientType,
    String? clientCode,
    String? clientName,
    String? clientVersion,
    String? clientEngine,
    String? clientEngineVersion,
    String? deviceName,
    String? deviceBrand,
    String? deviceModel,
    String? countryCode,
    String? countryName,
    bool? current,
  }) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}
