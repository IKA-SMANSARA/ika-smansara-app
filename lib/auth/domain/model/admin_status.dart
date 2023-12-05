import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_status.freezed.dart';
part 'admin_status.g.dart';

@freezed
class AdminStatus with _$AdminStatus {
  factory AdminStatus({
    @Default(false) bool? adminStatus,
  }) = _AdminStatus;

  factory AdminStatus.fromJson(Map<String, dynamic> json) =>
      _$AdminStatusFromJson(json);
}
