// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_register_request_dto.freezed.dart';

part 'email_register_request_dto.g.dart';

@freezed
class EmailRegisterRequestDTO with _$EmailRegisterRequestDTO {
  const factory EmailRegisterRequestDTO({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'name') String? name,
  }) = _EmailRegisterRequestDTO;

  factory EmailRegisterRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailRegisterRequestDTOFromJson(json);
}
