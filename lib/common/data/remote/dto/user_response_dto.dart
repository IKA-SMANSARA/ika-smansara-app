// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_dto.freezed.dart';

part 'user_response_dto.g.dart';

@freezed
class UserResponseDTO with _$UserResponseDTO {
  const factory UserResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'hash') String? hash,
    @JsonKey(name: 'registration') String? registration,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'passwordUpdate') String? passwordUpdate,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _UserResponseDTO;

  factory UserResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDTOFromJson(json);
}
