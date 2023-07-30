part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginEmailChange({@required String? email}) =
      _LoginEmailChange;

  const factory LoginEvent.loginPasswordChange({@required String? password}) =
      _LoginPasswordChange;

  const factory LoginEvent.loginSubmitted() = _LoginSubmitted;
}
