import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLogoutUseCase {
  UserLogoutUseCase(
    this._authRepository,
    this._getIdEmailSessionFromLocalUseCase,
  );

  final AuthRepository _authRepository;
  final GetIdEmailSessionFromLocalUseCase _getIdEmailSessionFromLocalUseCase;

  Future<AuthStatus> call() async {
    return _getIdEmailSessionFromLocalUseCase().then(
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
