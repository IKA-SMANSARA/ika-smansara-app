// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_success_response.freezed.dart';

part 'email_session_success_response.g.dart';

@freezed
class EmailSessionSuccessResponse with _$EmailSessionSuccessResponse {
  const factory EmailSessionSuccessResponse({
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
    bool? current,
  }) = _EmailSessionSuccessResponse;

  factory EmailSessionSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionSuccessResponseFromJson(json);
}
