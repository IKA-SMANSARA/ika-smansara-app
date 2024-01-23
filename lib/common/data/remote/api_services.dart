// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/register/register.dart';

part 'api_services.chopper.dart';

@ChopperApi()
abstract interface class ApiServices extends ChopperService {
  static ApiServices create([ChopperClient? client]) => _$ApiServices(client);
  // get user by user id
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraUserProfileCollectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getUserByUserId(
    @Path('documentId') String documentId,
  );
  // get detail user history transaction
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraTransactionsCollectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getUserTransactionHistoryDetail(
    @Path('documentId') String documentId,
  );

  // get list of user history transaction
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraTransactionsCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getUserTransactionHistory(
    @Query('queries[]') String? queries,
  );
  // update document transaction
  @Post(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraTransactionsCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> saveTransactionDetail(
    @Body() TransactionDocumentRequestDTO transactionDocumentRequestDTO,
  );
  // path detail campaigns
  @Patch(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCampaignsCollectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> updateCampaignDetail(
    @Path('documentId') String documentId,
    @Body()
    CampaignDocumentUpdateContentRequestDTO
        campaignDocumentUpdateContentRequestDTO,
  );
  // get detail campaigns
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCampaignsCollectionId}/documents/{documentId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getCampaignDetail(
    @Path('documentId') String documentId,
  );

  // get all campaigns by categories
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCampaignsCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getAllCampaignsByCategories(
    @Query('queries[]') String? queries,
  );

  // get all campaigns by something
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCampaignsCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getAllCampaigns(
    @Query('queries[]') String? queries,
  );

  // get categories
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCategoriesCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getCategories();

  // get carousel
  @Get(
    path:
        'databases/${Constants.ikaSmansaraDatabaseId}/collections/${Constants.ikaSmansaraCarouselCollectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
      Constants.xAppwriteKey: Constants.ikaSmansaraApiKey,
    },
  )
  Future<Response> getCarousel();

  // get account
  @Get(
    path: 'account',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> getAccount(
    @Header('Cookie') String cookieValue,
  );

  // get email session
  @Get(
    path: 'account/sessions/{sessionId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> getEmailSession(
    @Path('sessionId') String sessionId,
    @Header('Cookie') String cookieValue,
  );

  // create email session / login
  @Post(
    path: 'account/sessions/email',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> createEmailSession(
    @Body() EmailSessionRequestDTO emailSessionRequestDTO,
  );

  // delete email session / logout
  @Delete(
    path: 'account/sessions/{sessionId}',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> deleteEmailSession(
    @Path('sessionId') String sessionId,
    @Header('Cookie') String cookieValue,
  );

  // register user
  @Post(
    path: 'account',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> userRegister(
    @Body() EmailRegisterRequestDTO emailRegisterRequestDTO,
  );

  // register user : save user profile doc
  @Post(
    path: 'databases/{databaseId}/collections/{collectionId}/documents',
    headers: {
      Constants.accept: Constants.applicationJson,
      Constants.xAppwriteProject: Constants.ikaSmansaraProjectId,
      Constants.contentType: Constants.applicationJson,
      Constants.xAppwriteResponseFormat: Constants.xAppwriteResponseFormatValue,
    },
  )
  Future<Response> saveUserProfileDoc(
    @Path('databaseId') String databaseId,
    @Path('collectionId') String collectionId,
    @Header('Cookie') String cookieValue,
    @Body() UserRegisterDocRequestDTO userRegisterDocRequestDTO,
  );
}
