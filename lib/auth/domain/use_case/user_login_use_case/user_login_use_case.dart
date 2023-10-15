import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLoginUseCase {
  UserLoginUseCase(
    this._authRepository,
    this._saveIdEmailSessionToLocalUseCase,
  );

  final AuthRepository _authRepository;
  final SaveIdEmailSessionToLocalUseCase _saveIdEmailSessionToLocalUseCase;

  Future<AuthStatus> call(
    String email,
    String password,
  ) async {
    final emailSessionRequest = EmailSessionRequest(
      email: email,
      password: password,
    );

    final response = await _authRepository.createEmailSession(
      emailSessionRequest,
    );

    return response.fold(
      (responseFailure) {
        return AuthStatus(
          authMessage: responseFailure.message ?? Constants.blankString,
        );
      },
      (responseSuccess) async {
        await _saveIdEmailSessionToLocalUseCase(
          responseSuccess.id ?? Constants.blankString,
        );

        return const AuthStatus(authStatus: true);
      },
    );
  }
}
