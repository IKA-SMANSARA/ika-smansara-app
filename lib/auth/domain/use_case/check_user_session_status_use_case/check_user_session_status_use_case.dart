import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckUserSessionStatusUseCase {
  CheckUserSessionStatusUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<AuthStatus> call() async {
    final sessionIdFromLocal =
        await _authRepository.readIdEmailSessionFromLocal();

    if (sessionIdFromLocal.sessionId != null) {
      final sessionIdFromRemote = await _authRepository.getEmailSession(
        sessionIdFromLocal.sessionId ?? '',
      );

      return sessionIdFromRemote.fold(
        (responseFailure) {
          return AuthStatus(
            authMessage: responseFailure.message ?? Constants.blankString,
          );
        },
        (responseSuccess) async {
          return const AuthStatus(authStatus: true);
        },
      );
    }

    return const AuthStatus();
  }
}
