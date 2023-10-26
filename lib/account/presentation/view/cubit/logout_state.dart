part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = Initial;
  const factory LogoutState.unAuthentication() = UnAuthentication;
}