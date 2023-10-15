import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<EmailSessionFailureResponse, EmailSessionSuccessResponse>>
      createEmailSession(
    EmailSessionRequest emailSessionRequest,
  ) async {
    final responseCreateEmailSession = await _apiServices.createEmailSession(
      emailSessionRequest.toEmailSessionRequestDTO(),
    );

    if (responseCreateEmailSession.isSuccessful) {
      return Right(
        EmailSessionSuccessResponseDTO.fromJson(
          responseCreateEmailSession.body as Map<String, dynamic>,
        ).toEmailSessionSuccessResponse(),
      );
    } else {
      return Left(
        EmailSessionFailureResponseDTO.fromJson(
          responseCreateEmailSession.error! as Map<String, dynamic>,
        ).toEmailSessionFailureResponse(),
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
  Future<Either<EmailSessionFailureResponse, EmailSessionSuccessResponse>>
      getEmailSession(
    String? sessionId,
  ) async {
    final responseGetEmailSession = await _apiServices.getEmailSession(
      sessionId ?? '',
    );

    if (responseGetEmailSession.isSuccessful) {
      return Right(
        EmailSessionSuccessResponseDTO.fromJson(
          responseGetEmailSession.body as Map<String, dynamic>,
        ).toEmailSessionSuccessResponse(),
      );
    } else {
      return Left(
        EmailSessionFailureResponseDTO.fromJson(
          responseGetEmailSession.error! as Map<String, dynamic>,
        ).toEmailSessionFailureResponse(),
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
}
