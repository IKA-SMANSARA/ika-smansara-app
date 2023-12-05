// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_doc_request.freezed.dart';
part 'user_profile_doc_request.g.dart';

@freezed
class UserProfileDocRequest with _$UserProfileDocRequest {
  const factory UserProfileDocRequest({
    String? name,
    String? email,
    String? address,
    String? phone,
    @Default(false) bool isAlumni,
    @Default('') String graduateYear,
    String? createAt,
    String? updateAt,
    @Default(false) bool isAdmin,
    @Default(false) bool isDeleted,
    String? authKey,
  }) = _UserProfileDocRequest;

  factory UserProfileDocRequest.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDocRequestFromJson(json);
}
