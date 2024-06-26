import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteCampaignRepository implements CampaignRepository {
  final Client _appwriteClient;

  AppwriteCampaignRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);
  late final _storage = Storage(_appwriteClient);

  @override
  Future<Result<CampaignDocument>> createCampaign({
    required CampaignRequest campaignRequest,
    File? imageFile,
  }) async {
    try {
      final imageId = ID.unique();
      final file = InputFile.fromPath(
        path: imageFile?.path ?? '',
        filename: 'campaign-${imageFile?.path}',
      );

      var uploadPhotoCampaign = _storage.createFile(
        bucketId: dotenv.env['BUCKET_IMAGE_CAMPAIGN'].toString(),
        fileId: imageId,
        file: file,
        permissions: [
          Permission.read(Role.any()),
        ],
      );

      var imageUrl = '';

      await uploadPhotoCampaign.then(
        (response) {
          if (response.$id != '') {
            imageUrl =
                'https://cloud.appwrite.io/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${dotenv.env['PROJECT_ID'].toString()}&mode=admin';
          } else {
            imageUrl = '';
          }
        },
      );

      Constants.logger.d('IMAGE URL $imageUrl');

      if (imageUrl != '') {
        var result = await _databases.createDocument(
          databaseId: dotenv.env['DATABASE_ID'].toString(),
          collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
          documentId: ID.unique(),
          data: campaignRequest
              .copyWith(
                photoThumbnail: imageUrl,
              )
              .toJson(),
          permissions: [
            Permission.read(
              Role.label('admin'),
            ),
            Permission.update(
              Role.label('admin'),
            ),
            Permission.read(
              Role.users(),
            ),
          ],
        );

        Constants.logger.d(result.data);

        return Result.success(
          CampaignDocument.fromJson(
            result.toMap(),
          ),
        );
      } else {
        return Result.failed('Error! failed get image url!');
      }
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<CampaignDocument>> deleteCampaign({
    required CampaignRequest campaignRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
        documentId: campaignRequest.id ?? 'unique()',
        data: campaignRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        CampaignDocument.fromJson(
          result.toMap(),
        ),
      );
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
      var filterQueries = [
        Query.orderDesc('dateStartCampaign'),
        Query.equal('isDeleted', false),
        Query.equal('isActive', true),
      ];

      (categoryName != '')
          ? filterQueries.add(Query.search('categories', '$categoryName'))
          : filterQueries;

      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
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
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
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
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
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
      final imageId = ID.unique();
      final file = imageFile != null
          ? InputFile.fromPath(
              path: imageFile.path,
              filename: 'campaign-${imageFile.path}',
            )
          : null;
      var imageUrl = '';

      if (file != null) {
        var uploadPhotoCampaign = _storage.createFile(
          bucketId: dotenv.env['BUCKET_IMAGE_CAMPAIGN'].toString(),
          fileId: imageId,
          file: file,
          permissions: [
            Permission.read(Role.any()),
          ],
        );

        await uploadPhotoCampaign.then(
          (response) {
            if (response.$id != '') {
              imageUrl =
                  'https://cloud.appwrite.io/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${dotenv.env['PROJECT_ID'].toString()}&mode=admin';
            } else {
              imageUrl = '';
            }
          },
        );
      }

      Constants.logger.d('IMAGE URL $imageUrl');

      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
        documentId: campaignRequest.id ?? 'unique()',
        data: (imageUrl != '')
            ? campaignRequest.copyWith(photoThumbnail: imageUrl).toJson()
            : campaignRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        CampaignDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<CampaignDocument>>> getCampaignByUserId({
    required String userId,
  }) async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['CAMPAIGN_DOCUMENT_ID'].toString(),
        queries: [
          Query.orderDesc('dateStartCampaign'),
          Query.equal('isDeleted', false),
          Query.equal('isActive', true),
          Query.equal('createdBy', '$userId')
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
}
