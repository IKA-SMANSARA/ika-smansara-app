import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class EmailValidation extends FormzInput<String, EmailValidationError> {
  const EmailValidation.pure([super.value = '']) : super.pure();

  const EmailValidation.dirty([super.value = '']) : super.dirty();

  static final _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
