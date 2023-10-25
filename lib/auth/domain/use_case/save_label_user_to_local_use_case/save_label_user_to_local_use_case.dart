import 'package:ika_smansara/auth/auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveLabelUserToLocalUseCase {
  SaveLabelUserToLocalUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<void> call(String userLabel) async =>
      _authRepository.saveUserLabelToLocal(userLabel);
}
