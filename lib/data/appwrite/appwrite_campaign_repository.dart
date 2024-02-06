import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteCampaignRepository implements CampaignRepository {
  final Client _appwriteClient;

  AppwriteCampaignRepository({Client? appwriteClient})
      : _appwriteClient = appwriteClient ??
            Client()
                .setEndpoint(Constants.BASE_URL)
                .setProject(Constants.PROJECT_ID);

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<CampaignDocument>> createCampaign({
    required CampaignRequest campaignRequest,
    required File imageFile,
  }) async {
    try {
      // TODO: implement getNewCampaigns
      throw UnimplementedError();
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<CampaignDocument>> deleteCampaign({
    required String campaignId,
  }) async {
    try {
      // TODO: implement getNewCampaigns
      throw UnimplementedError();
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<CampaignDocument>>> getCampaignByCategories({
    required String categoryName,
  }) async {
    try {
      var filterQueries = (categoryName != '')
          ? [
              Query.orderDesc('dateStartCampaign'),
              Query.search('categories', '$categoryName'),
              Query.equal('isDeleted', false),
              Query.equal('isActive', true),
            ]
          : [
              Query.orderDesc('dateStartCampaign'),
              Query.equal('isDeleted', false),
              Query.equal('isActive', true),
            ];
      var result = await _databases.listDocuments(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.CAMPAIGN_DOCUMENT_ID,
        queries: filterQueries,
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => CampaignDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<CampaignDocument>> getCampaignDetail({
    required String campaignId,
  }) async {
    try {
      var result = await _databases.getDocument(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.CAMPAIGN_DOCUMENT_ID,
        documentId: campaignId,
      );

      Constants.logger.d(result.data);

      return Result.success(
        CampaignDocument.fromJson(
          result.data,
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<CampaignDocument>>> getNewCampaigns() async {
    try {
      var result = await _databases.listDocuments(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.CAMPAIGN_DOCUMENT_ID,
        queries: [
          Query.limit(5),
          Query.orderDesc('dateStartCampaign'),
          Query.equal('isDeleted', false),
          Query.equal('isActive', true),
        ],
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => CampaignDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<CampaignDocument>> updateCampaign({
    required CampaignRequest campaignRequest,
    File? imageFile,
  }) async {
    try {
      // TODO: implement getNewCampaigns
      throw UnimplementedError();
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
