// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

class LoginFormBloc extends FormBloc<String, String> {
  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
      ],
    );

    password.addValidators([_passwordMin8Chars(password)]);
  }

  // ignore: strict_raw_type, unused_element
  Validator<String> _passwordMin8Chars(TextFieldBloc? passwordField) {
    return (String? password) {
      if (password == null || password.isEmpty || password.runes.length >= 8) {
        return null;
      }

      return 'Password Min 8 Chars';
    };
  }

  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final _userLoginUseCase = getIt<UserLoginUseCase>();

  @override
  Future<void> close() {
    email.close();
    password.close();
    return super.close();
  }

  @override
  FutureOr<void> onSubmitting() async {
    await _userLoginUseCase(email.value, password.value).then(
      (response) {
        final authStatus = response.authStatus ?? false;
        if (authStatus) {
          emitSuccess();
        } else {
          emitFailure(failureResponse: response.authMessage);
        }
      },
    );
  }
}
