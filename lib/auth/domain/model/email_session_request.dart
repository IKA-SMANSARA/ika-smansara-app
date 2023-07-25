import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_session_request.freezed.dart';

part 'email_session_request.g.dart';

@freezed
class EmailSessionRequest with _$EmailSessionRequest {
  const factory EmailSessionRequest({
    String? email,
    String? password,
  }) = _EmailSessionRequest;

  factory EmailSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailSessionRequestFromJson(json);
}
