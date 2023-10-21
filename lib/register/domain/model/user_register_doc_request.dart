// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/register/register.dart';

part 'user_register_doc_request.freezed.dart';
part 'user_register_doc_request.g.dart';

@freezed
class UserRegisterDocRequest with _$UserRegisterDocRequest {
  factory UserRegisterDocRequest({
    String? documentId,
    UserProfileDocRequest? data,
    @Default([]) List<String> permissions,
  }) = _UserRegisterDocRequest;

  factory UserRegisterDocRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterDocRequestFromJson(json);
}
