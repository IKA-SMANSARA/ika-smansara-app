// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/register/register.dart';

part 'user_register_doc_request_dto.freezed.dart';
part 'user_register_doc_request_dto.g.dart';

@freezed
class UserRegisterDocRequestDTO with _$UserRegisterDocRequestDTO {
  factory UserRegisterDocRequestDTO({
    @JsonKey(name: 'documentId') String? documentId,
    @JsonKey(name: 'data') UserProfileDocRequestDTO? data,
    @JsonKey(name: 'permissions') @Default([]) List<String> permissions,
  }) = _UserRegisterDocRequestDTO;

  factory UserRegisterDocRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterDocRequestDTOFromJson(json);
}
