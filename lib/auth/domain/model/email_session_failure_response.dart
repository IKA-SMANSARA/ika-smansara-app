// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_failure_response.freezed.dart';

part 'email_session_failure_response.g.dart';

@freezed
class EmailSessionFailureResponse with _$EmailSessionFailureResponse {
  const factory EmailSessionFailureResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
  }) = _EmailSessionFailureResponse;

  factory EmailSessionFailureResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionFailureResponseFromJson(json);
}
