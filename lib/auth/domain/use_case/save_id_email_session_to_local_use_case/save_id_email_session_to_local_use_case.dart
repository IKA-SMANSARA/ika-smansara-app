import 'package:ika_smansara/auth/auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveIdEmailSessionToLocalUseCase {
  SaveIdEmailSessionToLocalUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<void> call(String sessionId) async =>
      _authRepository.saveIdEmailSessionToLocal(sessionId);
}
