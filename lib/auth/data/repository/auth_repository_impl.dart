import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/common/data/mapper/user_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, SessionResponse>> createEmailSession(
    EmailSessionRequest emailSessionRequest,
  ) async {
    final responseCreateEmailSession = await _apiServices.createEmailSession(
      emailSessionRequest.toEmailSessionRequestDTO(),
    );

    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox('user-cookie');
    await lazyBox.put(
      'cookie',
      responseCreateEmailSession.headers.entries.first.value,
    );

    if (responseCreateEmailSession.isSuccessful) {
      return Right(
        SessionResponseDTO.fromJson(
          responseCreateEmailSession.body as Map<String, dynamic>,
        ).toSessionResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseCreateEmailSession.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
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
  Future<Either<ErrorResponse, SessionResponse>> getEmailSession(
    String? sessionId,
  ) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox('user-cookie');
    final cookie = await lazyBox.get('cookie');

    final responseGetEmailSession = await _apiServices.getEmailSession(
      sessionId ?? '',
      cookie.toString(),
    );

    if (responseGetEmailSession.isSuccessful) {
      return Right(
        SessionResponseDTO.fromJson(
          responseGetEmailSession.body as Map<String, dynamic>,
        ).toSessionResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetEmailSession.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<Either<ErrorResponse, int>> deleteEmailSession(
    String? sessionId,
  ) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox('user-cookie');
    final cookie = await lazyBox.get('cookie');

    final responseDeleteEmailSession = await _apiServices.deleteEmailSession(
      sessionId ?? '',
      cookie.toString(),
    );

    if (responseDeleteEmailSession.isSuccessful) {
      return Right(responseDeleteEmailSession.statusCode);
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseDeleteEmailSession.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<SessionId> readIdEmailSessionFromLocal() async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox(Constants.sessionUserIdBoxName);
    final sessionId = await lazyBox.get(Constants.sessionUserIdKeyName);

    return SessionId(sessionId: sessionId.toString());
  }

  @override
  Future<Either<ErrorResponse, UserResponse>> userRegister(
    EmailRegisterRequest emailRegisterRequest,
  ) async {
    final responseUserRegister = await _apiServices.userRegister(
      emailRegisterRequest.toEmailRegisterRequestDTO(),
    );

    if (responseUserRegister.isSuccessful) {
      return Right(
        UserResponseDTO.fromJson(
          responseUserRegister.body as Map<String, dynamic>,
        ).toUserResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseUserRegister.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
