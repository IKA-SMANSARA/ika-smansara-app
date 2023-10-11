import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

abstract class AuthRepository {
  Future<Resource<EmailSessionResponse>> createEmailSession(
    EmailSessionRequest emailSessionRequest,
  );

  Future<void> saveIdEmailSessionToLocal(
    String? sessionId,
  );

  Future<SessionId> readIdEmailSessionFromLocal();

  Future<Resource<EmailSessionResponse>> getEmailSession(String? sessionId);
}
