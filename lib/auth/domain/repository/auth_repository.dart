import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

abstract class AuthRepository {
  Future<Either<EmailSessionFailureResponse, EmailSessionSuccessResponse>>
      createEmailSession(
    EmailSessionRequest emailSessionRequest,
  );

  Future<void> saveIdEmailSessionToLocal(
    String? sessionId,
  );

  Future<SessionId> readIdEmailSessionFromLocal();

  Future<Either<EmailSessionFailureResponse, EmailSessionSuccessResponse>>
      getEmailSession(String? sessionId);
}
