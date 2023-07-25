import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

abstract class AuthRepository {
  Future<Resource<EmailSessionResponse>> createEmailSession(
    EmailSessionRequest emailSessionRequest,
  );

  Future<Resource<SimpleResource>> saveIdEmailSessionToLocal(
    String? sessionId,
  );
}
