part of 'login_page_state_bloc.dart';

@freezed
class LoginPageStateState with _$LoginPageStateState {
  const factory LoginPageStateState.initial() = Initial;
  const factory LoginPageStateState.loading() = Loading;
  const factory LoginPageStateState.authenticated() = Authenticated;
  const factory LoginPageStateState.unauthenticated() = Unauthenticated;
}
