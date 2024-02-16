import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/session.dart';
import 'package:ika_smansara/domain/entities/user.dart';

abstract interface class Authentication {
  Future<Result<User>> register({
    required String userId,
    required String email,
    required String password,
    required String name,
  });
  Future<Result<Session>> login({
    required String email,
    required String password,
  });
  Future<Result<void>> logout();
  Future<String?> getLoggedInUserId();
}
