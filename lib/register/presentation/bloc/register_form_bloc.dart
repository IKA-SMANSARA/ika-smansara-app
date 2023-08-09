// ignore_for_file: strict_raw_type, inference_failure_on_instance_creation

import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class RegisterFormBloc extends FormBloc<String, String> {
  RegisterFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        fullName,
        address,
        phone,
        password,
        confirmPassword,
        isAlumnus,
      ],
    );

    confirmPassword
      ..addValidators([FieldBlocValidators.confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);

    isAlumnus.onValueChanges(
      onData: (previous, current) async* {
        if (current.value) {
          addFieldBlocs(fieldBlocs: [graduateYear]);
        } else {
          removeFieldBlocs(fieldBlocs: [graduateYear]);
        }
      },
    );

    graduateYear
      ..addValidators([_isAlumnus(isAlumnus)])
      ..subscribeToFieldBlocs([isAlumnus]);

    phone
      ..addValidators([_phoneNumberFormat(phone)])
      ..subscribeToFieldBlocs([phone]);
  }

  Validator<String> _phoneNumberFormat(TextFieldBloc phoneField) {
    return (String phone) {
      final phoneRegExp = RegExp(r'^0\d{8,12}$');

      if (phoneRegExp.hasMatch(phoneField.value)) {
        return null;
      }
      return 'Nomor telepon harus diawali angka 0 / nol\nminimal 8 angka\nmaksimal13 angka';
    };
  }

  Validator<String> _isAlumnus(BooleanFieldBloc isAlumnusField) {
    return (String isAlumnus) {
      if (isAlumnusField.value) {
        return null;
      }
      return 'This field is require';
    };
  }

  final isAlumnus = BooleanFieldBloc();

  final graduateYear = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final fullName = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final address = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final phone = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.passwordMin6Chars,
    ],
  );

  final confirmPassword = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.passwordMin6Chars,
    ],
  );

  @override
  Future<void> close() {
    isAlumnus.close();
    graduateYear.close();
    email.close();
    fullName.close();
    address.close();
    phone.close();
    password.close();
    confirmPassword.close();
    return super.close();
  }

  @override
  FutureOr<void> onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();
  }
}