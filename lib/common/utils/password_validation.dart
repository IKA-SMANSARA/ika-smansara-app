import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class PasswordValidation extends FormzInput<String, PasswordValidationError> {
  const PasswordValidation.pure([super.value = '']) : super.pure();

  const PasswordValidation.dirty([super.value = '']) : super.dirty();

  static final _passwordRegex =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$');

  @override
  PasswordValidationError? validator(String value) {
    return _passwordRegex.hasMatch(value)
        ? null
        : PasswordValidationError.invalid;
  }
}
