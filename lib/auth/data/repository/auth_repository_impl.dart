import 'package:hive/hive.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Resource<EmailSessionResponse>> createEmailSession(
      EmailSessionRequest emailSessionRequest) async {
    Resource<EmailSessionResponse> result;

    try {
      final responseCreateEmailSession = await _apiServices.createEmailSession(
        emailSessionRequest.toEmailSessionRequestDTO(),
      );

      if (responseCreateEmailSession.isSuccessful) {
        result = Resource.success(
          EmailSessionResponseDTO.fromJson(
            responseCreateEmailSession.body as Map<String, dynamic>,
          ).toEmailSessionResponse(),
        );
      } else {
        result = Resource.error(
          EmailSessionResponseDTO.fromJson(
                responseCreateEmailSession.body as Map<String, dynamic>,
              ).toEmailSessionResponse().message ??
              'Error!!',
          const EmailSessionResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(
        e.toString(),
        const EmailSessionResponse(),
      );
    }

    return result;
  }

  @override
  Future<void> saveIdEmailSessionToLocal(
    String? sessionId,
  ) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.sessionUserIdBoxName);
    final saveSessionUserId = lazyBox.put(
      Constants.sessionUserIdKeyName,
      sessionId,
    );
    return saveSessionUserId;
  }

  @override
  Future<Resource<EmailSessionResponse>> getEmailSession(
    String? sessionId,
  ) async {
    Resource<EmailSessionResponse> result;

    try {
      final responseCreateEmailSession = await _apiServices.getEmailSession(
        sessionId ?? '',
      );

      if (responseCreateEmailSession.isSuccessful) {
        result = Resource.success(
          EmailSessionResponseDTO.fromJson(
            responseCreateEmailSession.body as Map<String, dynamic>,
          ).toEmailSessionResponse(),
        );
      } else {
        result = Resource.error(
          EmailSessionResponseDTO.fromJson(
                responseCreateEmailSession.body as Map<String, dynamic>,
              ).toEmailSessionResponse().message ??
              'Error!!',
          const EmailSessionResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(
        e.toString(),
        const EmailSessionResponse(),
      );
    }

    return result;
  }

  @override
  Future<SessionId> readIdEmailSessionFromLocal() async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.sessionUserIdBoxName);
    final sessionId = await lazyBox.get(Constants.sessionUserIdKeyName);

    return SessionId(sessionId: sessionId.toString());
  }
}
