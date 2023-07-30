import 'package:ika_smansara/login/login.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeletePasswordFieldContentUseCase {
  DeletePasswordFieldContentUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<void> call(String password) async {
    return _loginRepository.deletePasswordFieldContent();
  }
}
