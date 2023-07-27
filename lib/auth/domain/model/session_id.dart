import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_id.freezed.dart';
part 'session_id.g.dart';

@freezed
class SessionId with _$SessionId {
  const factory SessionId({
    @Default('') String? sessionId,
  }) = _SessionId;

  factory SessionId.fromJson(Map<String, dynamic> json) =>
      _$SessionIdFromJson(json);
}
