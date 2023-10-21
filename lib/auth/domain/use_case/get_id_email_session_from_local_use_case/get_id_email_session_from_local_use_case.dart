import 'package:ika_smansara/auth/auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetIdEmailSessionFromLocalUseCase {
  GetIdEmailSessionFromLocalUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<SessionId> call() async {
    return _authRepository.readIdEmailSessionFromLocal();
  }
}
