import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.freezed.dart';
part 'auth_status.g.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus({
    @Default(false) bool? authStatus,
    @Default('') String? authMessage,
  }) = _AuthStatus;

  factory AuthStatus.fromJson(Map<String, dynamic> json) =>
      _$AuthStatusFromJson(json);
}
