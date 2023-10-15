// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';
import 'package:ika_smansara/auth/data/remote/dto/email_session_request_dto.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';

part 'api_services.chopper.dart';

@ChopperApi()
abstract class ApiServices extends ChopperService {
  static ApiServices create([ChopperClient? client]) => _$ApiServices(client);

  // get email session
  @Get(
    path: 'account/sessions/{sessionId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.projectId,
    },
  )
  Future<Response> getEmailSession(@Path('sessionId') String sessionId);

  // create email session / login
  @Post(
    path: 'account/sessions/email',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
    },
  )
  Future<Response> createEmailSession(
    @Body() EmailSessionRequestDTO emailSessionRequestDTO,
  );

  // get counter data
  @Get(
    path:
        'databases/${Constants.databaseId}/collections/${Constants.collectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteKey: Constants.apiKey,
      Constants.xAppwriteProject: Constants.projectId,
    },
  )
  Future<Response> getCounter(@Path('documentId') String documentId);

  // update counter data
  @Patch(
    path:
        'databases/${Constants.databaseId}/collections/${Constants.collectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteKey: Constants.apiKey,
      Constants.xAppwriteProject: Constants.projectId,
    },
  )
  Future<Response> updateCounter(
    @Path('documentId') String documentId,
    @Body() CounterDocumentRequestDTO counterDocumentRequestDTO,
  );
}
