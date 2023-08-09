// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginFormBloc extends FormBloc<String, String> {
  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
      ],
    );
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
      FieldBlocValidators.passwordMin6Chars,
    ],
  );

  @override
  Future<void> close() {
    email.close();
    password.close();
    return super.close();
  }

  @override
  FutureOr<void> onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();
  }
}
