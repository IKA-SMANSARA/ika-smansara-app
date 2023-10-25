import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLoginUseCase {
  UserLoginUseCase(
    this._authRepository,
    this._saveIdEmailSessionToLocalUseCase,
    this._getUserAccountDetailUseCase,
    this._saveLabelUserToLocalUseCase,
  );

  final AuthRepository _authRepository;
  final SaveIdEmailSessionToLocalUseCase _saveIdEmailSessionToLocalUseCase;
  final GetUserAccountDetailUseCase _getUserAccountDetailUseCase;
  final SaveLabelUserToLocalUseCase _saveLabelUserToLocalUseCase;

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
      (responseSuccess) {
        return _getUserAccountDetailUseCase().then(
          (value) {
            return value.fold(
              (failure) {
                return AuthStatus(
                  authMessage: failure.message ?? Constants.blankString,
                );
              },
              (success) async {
                await _saveIdEmailSessionToLocalUseCase(
                  responseSuccess.id ?? Constants.blankString,
                );

                await _saveLabelUserToLocalUseCase(
                  success.labels?.first ?? Constants.blankString,
                );

                return const AuthStatus(authStatus: true);
              },
            );
          },
        );
      },
    );
  }
}
