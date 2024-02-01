import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/session.dart';
import 'package:ika_smansara/domain/entities/user.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteAuthentication implements Authentication {
  final Client _appwriteClient;

  AppwriteAuthentication({Client? appwriteClient})
      : _appwriteClient = appwriteClient ??
            Client()
                .setEndpoint(Constants.BASE_URL)
                .setProject(Constants.PROJECT_ID);

  late final Account _account = Account(_appwriteClient);

  @override
  Future<Result<Session>> login({
    required String email,
    required String password,
  }) async {
    try {
      var createEmailSession = await _account.createEmailSession(
        email: email,
        password: password,
      );

      Constants.logger.d(createEmailSession);

      return Result.success(
        Session.fromJson(createEmailSession.toMap()),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      var logout = await _account.deleteSession(sessionId: 'current');

      Constants.logger.d(logout);

      return Result.success(logout);
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<User>> register({
    required String userId,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var createAccount = await _account.create(
        userId: 'unique()',
        email: email,
        password: password,
        name: name,
      );

      Constants.logger.d(createAccount.toMap());

      return Result.success(
        User.fromJson(createAccount.toMap()),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<String?> getLoggedInUserId() async {
    try {
      var uid = await _account.get();

      return uid.$id;
    } on AppwriteException catch (e) {
      if (e.code != 401 || e.type != 'general_unauthorized_scope') rethrow;
    }

    return null;
  }
}
