// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    String? id,
    String? createAt,
    String? updatedAt,
    String? name,
    String? password,
    String? hash,
    String? registration,
    bool? status,
    String? label,
    String? passwordUpdate,
    String? email,
    String? phone,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
