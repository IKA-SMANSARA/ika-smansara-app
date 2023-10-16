import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

abstract class AuthRepository {
  Future<Either<ErrorResponse, EmailSessionSuccessResponse>> createEmailSession(
    EmailSessionRequest emailSessionRequest,
  );

  Future<void> saveIdEmailSessionToLocal(
    String? sessionId,
  );

  Future<SessionId> readIdEmailSessionFromLocal();

  Future<Either<ErrorResponse, EmailSessionSuccessResponse>> getEmailSession(
    String? sessionId,
  );

  Future<Either<ErrorResponse, UserResponse>> userRegister(
    EmailRegisterRequest emailRegisterRequest,
  );
}
