// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_failure_response_dto.freezed.dart';

part 'email_session_failure_response_dto.g.dart';

@freezed
class EmailSessionFailureResponseDTO with _$EmailSessionFailureResponseDTO {
  const factory EmailSessionFailureResponseDTO({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
  }) = _EmailSessionFailureResponseDTO;

  factory EmailSessionFailureResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionFailureResponseDTOFromJson(json);
}
