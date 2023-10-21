import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLogoutUseCase {
  UserLogoutUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<AuthStatus> call() async {
    final getIdEmailSessionFromLocalUseCase =
        getIt<GetIdEmailSessionFromLocalUseCase>();

    return getIdEmailSessionFromLocalUseCase().then(
      (value) async {
        final sessionIdFromLocal = value.sessionId ?? '';
        final sessionIdFromRemote = await _authRepository.deleteEmailSession(
          sessionIdFromLocal,
        );

        return sessionIdFromRemote.fold(
          (responseFailure) {
            return AuthStatus(
              authStatus: true,
              authMessage: responseFailure.message ?? Constants.blankString,
            );
          },
          (responseSuccess) {
            return const AuthStatus();
          },
        );
      },
    );
  }
}
