import 'package:ika_smansara/login/login.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteEmailFieldContentUseCase {
  DeleteEmailFieldContentUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<void> call(String email) async {
    return _loginRepository.deleteEmailFieldContent();
  }
}
