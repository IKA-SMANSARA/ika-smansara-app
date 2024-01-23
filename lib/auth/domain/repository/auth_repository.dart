import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

abstract interface class AuthRepository {
  Future<Either<ErrorResponse, SessionResponse>> createEmailSession(
    EmailSessionRequest emailSessionRequest,
  );

  Future<void> saveIdEmailSessionToLocal(
    String? sessionId,
  );

  Future<SessionId> readIdEmailSessionFromLocal();

  Future<Either<ErrorResponse, SessionResponse>> getEmailSession(
    String? sessionId,
  );

  Future<Either<ErrorResponse, UserResponse>> userRegister(
    EmailRegisterRequest emailRegisterRequest,
  );

  Future<Either<ErrorResponse, int>> deleteEmailSession(
    String? sessionId,
  );

  Future<void> saveUserLabelToLocal(String? userLabel);

  Future<UserLabel> readUserLabelFromLocal();

  Future<Either<ErrorResponse, UserResponse>> getUserAccountDetail();
}
