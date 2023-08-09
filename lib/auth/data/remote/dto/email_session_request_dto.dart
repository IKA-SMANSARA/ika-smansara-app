// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_request_dto.freezed.dart';

part 'email_session_request_dto.g.dart';

@freezed
class EmailSessionRequestDTO with _$EmailSessionRequestDTO {
  const factory EmailSessionRequestDTO({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _EmailSessionRequestDTO;

  factory EmailSessionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionRequestDTOFromJson(json);
}
