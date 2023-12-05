import 'package:ika_smansara/auth/auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLabelUserFromLocalUseCase {
  GetLabelUserFromLocalUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<UserLabel> call() async {
    return _authRepository.readUserLabelFromLocal();
  }
}
