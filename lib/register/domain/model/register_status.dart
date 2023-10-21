import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_status.freezed.dart';
part 'register_status.g.dart';

@freezed
class RegisterStatus with _$RegisterStatus {
  factory RegisterStatus({
    @Default(false) bool? registerStatus,
    @Default('') String? registerMessage,
  }) = _RegisterStatus;

  factory RegisterStatus.fromJson(Map<String, dynamic> json) =>
      _$RegisterStatusFromJson(json);
}
