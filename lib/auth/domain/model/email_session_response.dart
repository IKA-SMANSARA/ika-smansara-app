import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_response.freezed.dart';

part 'email_session_response.g.dart';

@freezed
class EmailSessionResponse with _$EmailSessionResponse {
  const factory EmailSessionResponse({
    String? id,
    String? createAt,
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
    String? current,
    String? message,
    int? code,
    String? type,
    String? version,
  }) = _EmailSessionResponse;

  factory EmailSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionResponseFromJson(json);
}
