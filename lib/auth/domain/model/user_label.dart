import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_label.freezed.dart';
part 'user_label.g.dart';

@freezed
class UserLabel with _$UserLabel {
  factory UserLabel({
    @Default('') String? userLabel,
  }) = _UserLabel;

  factory UserLabel.fromJson(Map<String, dynamic> json) =>
      _$UserLabelFromJson(json);
}
