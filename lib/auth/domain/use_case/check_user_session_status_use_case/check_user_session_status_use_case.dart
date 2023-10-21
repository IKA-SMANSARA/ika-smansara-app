import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/auth/domain/use_case/get_id_email_session_from_local_use_case/get_id_email_session_from_local_use_case.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckUserSessionStatusUseCase {
  CheckUserSessionStatusUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<AuthStatus> call() async {
    final getIdEmailSessionFromLocalUseCase =
        getIt<GetIdEmailSessionFromLocalUseCase>();

    return getIdEmailSessionFromLocalUseCase().then(
      (value) async {
        final sessionIdFromLocal = value.sessionId ?? '';
        final sessionIdFromRemote = await _authRepository.getEmailSession(
          sessionIdFromLocal,
        );

        return sessionIdFromRemote.fold(
          (responseFailure) {
            return AuthStatus(
              authMessage: responseFailure.message ?? Constants.blankString,
            );
          },
          (responseSuccess) {
            return const AuthStatus(authStatus: true);
          },
        );
      },
    );
  }
}
