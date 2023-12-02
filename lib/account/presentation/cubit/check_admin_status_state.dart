part of 'check_admin_status_cubit.dart';

@freezed
class CheckAdminStatusState with _$CheckAdminStatusState {
  const factory CheckAdminStatusState.isAdmin() = IsAdmin;
  const factory CheckAdminStatusState.isUser() = IsUser;
}
