// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_register_request.freezed.dart';

part 'email_register_request.g.dart';

@freezed
class EmailRegisterRequest with _$EmailRegisterRequest {
  const factory EmailRegisterRequest({
    String? userId,
    String? email,
    String? password,
    String? name,
  }) = _EmailRegisterRequest;

  factory EmailRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailRegisterRequestFromJson(json);
}
