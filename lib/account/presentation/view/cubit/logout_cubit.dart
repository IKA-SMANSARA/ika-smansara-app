import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/di/injection.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(const LogoutState.initial());

  final _userLogoutUseCase = getIt<UserLogoutUseCase>();

  void logout() {
    _userLogoutUseCase().then(
      (value) {
        final authStatus = value.authStatus ?? false;

        if (!authStatus) {
          emit(const LogoutState.unAuthentication());
        }
      },
    );
  }
}
