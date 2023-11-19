// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_doc_request_dto.freezed.dart';
part 'user_profile_doc_request_dto.g.dart';

@freezed
class UserProfileDocRequestDTO with _$UserProfileDocRequestDTO {
  const factory UserProfileDocRequestDTO({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'isAlumni') @Default(false) bool isAlumni,
    @JsonKey(name: 'graduateYear') @Default('') String graduateYear,
    @JsonKey(name: 'createAt') String? createAt,
    @JsonKey(name: 'updateAt') String? updateAt,
    @JsonKey(name: 'isAdmin') @Default(false) bool isAdmin,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'auth_key') String? authKey,
  }) = _UserProfileDocRequestDTO;

  factory UserProfileDocRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDocRequestDTOFromJson(json);
}
