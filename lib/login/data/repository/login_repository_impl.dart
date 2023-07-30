import 'package:hive/hive.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/login/login.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<void> saveEmailFieldContent(String? email) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.loginFormBox);
    final saveEmailFieldContent = lazyBox.put(Constants.emailKey, email);

    return saveEmailFieldContent;
  }

  @override
  Future<void> deleteEmailFieldContent() async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.loginFormBox);
    final deleteEmailFieldContent = lazyBox.delete(Constants.emailKey);

    return deleteEmailFieldContent;
  }

  @override
  Future<void> deletePasswordFieldContent() async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.loginFormBox);
    final deletePasswordFieldContent = lazyBox.delete(Constants.passwordKey);

    return deletePasswordFieldContent;
  }

  @override
  Future<void> savePasswordFieldContent(String? password) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.loginFormBox);
    final savePasswordFieldContent =
        lazyBox.put(Constants.passwordKey, password);

    return savePasswordFieldContent;
  }

  @override
  Future<FormField> readEmailPasswordFieldContent() async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.loginFormBox);
    final passwordFieldContent = lazyBox.get(Constants.passwordKey);
    final emailFieldContent = lazyBox.get(Constants.emailKey);

    return FormField(
      EmailField: emailFieldContent.toString(),
      PasswordField: passwordFieldContent.toString(),
    );
  }
}
