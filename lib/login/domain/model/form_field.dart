import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_field.freezed.dart';
part 'form_field.g.dart';

@freezed
class FormField with _$FormField {
  const factory FormField({
    @Default('') String? EmailField,
    @Default('') String? PasswordField,
  }) = _FormField;

  factory FormField.fromJson(Map<String, dynamic> json) =>
      _$FormFieldFromJson(json);
}
