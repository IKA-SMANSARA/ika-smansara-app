part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(EmailValidation.pure()) EmailValidation email,
    @Default(PasswordValidation.pure()) PasswordValidation password,
    @Default(Constants.blankString) String message,
  }) = _LoginState;
}
