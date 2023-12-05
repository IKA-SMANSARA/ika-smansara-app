// ignore_for_file: strict_raw_type, inference_failure_on_instance_creation, unused_element

import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/register/register.dart';

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

    password.addValidators([_passwordMin8Chars(password)]);

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

  Validator<String> _passwordMin8Chars(TextFieldBloc? passwordField) {
    return (String? password) {
      if (password == null || password.isEmpty || password.runes.length >= 8) {
        return null;
      }

      return 'Password Min 8 Chars';
    };
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
    ],
  );

  final confirmPassword = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
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

  final _saveUserProfileDocUseCase = getIt<SaveUserProfileDocUseCase>();

  @override
  FutureOr<void> onSubmitting() async {
    await _saveUserProfileDocUseCase(
      address: address.value,
      email: email.value,
      graduateYear: graduateYear.value,
      isAlumnus: isAlumnus.value,
      name: fullName.value,
      password: confirmPassword.value,
      phone: phone.value,
    ).then(
      (value) {
        final status = value.registerStatus ?? false;

        if (status) {
          emitSuccess();
        } else {
          emitFailure(failureResponse: value.registerMessage);
        }
      },
    );
  }
}
