import 'package:ika_smansara/login/login.dart';

abstract class LoginRepository {
  Future<void> saveEmailFieldContent(String? email);

  Future<void> savePasswordFieldContent(String? password);

  Future<void> deleteEmailFieldContent();

  Future<void> deletePasswordFieldContent();

  Future<FormField> readEmailPasswordFieldContent();
}
