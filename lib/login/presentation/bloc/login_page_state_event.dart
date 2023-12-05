part of 'login_page_state_bloc.dart';

@freezed
class LoginPageStateEvent with _$LoginPageStateEvent {
  const factory LoginPageStateEvent.started() = _Started;
  const factory LoginPageStateEvent.authentication() = _Authentication;
}
