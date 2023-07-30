import 'package:ika_smansara/login/login.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReadEmailPasswordFieldContentUseCase {
  const ReadEmailPasswordFieldContentUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<FormField> call() async {
    return _loginRepository.readEmailPasswordFieldContent();
  }
}
