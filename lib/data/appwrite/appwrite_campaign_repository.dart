import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteCampaignRepository implements CampaignRepository {
  final Client _appwriteClient;
  late final TablesDB _tablesDB;
  late final Storage _storage;

  AppwriteCampaignRepository({
    Client? appwriteClient,
    TablesDB? tablesDB,
    Storage? storage,
  }) : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient {
    _tablesDB = tablesDB ?? TablesDB(_appwriteClient);
    _storage = storage ?? Storage(_appwriteClient);
  }

  // Factory constructor for testing with direct mock injection
  @visibleForTesting
  factory AppwriteCampaignRepository.forTesting({
    required TablesDB tablesDB,
    required Storage storage,
  }) {
    return AppwriteCampaignRepository(
      appwriteClient: Client()
        ..setEndpoint('http://localhost')
        ..setProject('test'),
      tablesDB: tablesDB,
      storage: storage,
    );
  }

  @override
  Future<Result<CampaignDocument>> createCampaign({
    required CampaignRequest campaignRequest,
    File? imageFile,
  }) async {
    try {
      final imageId = ID.unique();
      final file = imageFile != null
          ? InputFile.fromPath(
              path: imageFile.path,
              filename: 'campaign-${imageFile.path.split('/').last}',
            )
          : InputFile.fromPath(
              path: '',
              filename: 'campaign-default',
            );

      var uploadPhotoCampaign = _storage.createFile(
        bucketId: dotenv.env['BUCKET_IMAGE_CAMPAIGN'] ?? 'default-bucket',
        fileId: imageId,
        file: file,
        permissions: [
          Permission.read(Role.any()),
        ],
      );

      var imageUrl = '';

      if (imageFile != null) {
        await uploadPhotoCampaign.then(
          (response) {
            if (response.$id != '') {
              imageUrl =
                  'https://cloud.appwrite.io/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${dotenv.env['PROJECT_ID'] ?? 'default-project'}&mode=admin';
            } else {
              imageUrl = '';
            }
          },
        );
      }

      Constants.logger.d('IMAGE URL $imageUrl');

      if (imageFile == null || imageUrl != '') {
        var result = await _tablesDB.createRow(
          databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
          tableId: dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
          rowId: ID.unique(),
          data: campaignRequest
              .copyWith(
                photoThumbnail: imageFile != null ? imageUrl : '',
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
      var result = await _tablesDB.updateRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        rowId: campaignRequest.id ?? ID.unique(),
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

      if (categoryName.isNotEmpty) {
        filterQueries.add(Query.search('categories', categoryName));
      }

      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        queries: filterQueries,
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
      var result = await _tablesDB.getRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId:
            dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        rowId: campaignId,
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
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId:
            dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.limit(5),
          Query.orderDesc('dateStartCampaign'),
          Query.equal('isDeleted', false),
          Query.equal('isActive', true),
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
              filename: 'campaign-${imageFile.path.split('/').last}',
            )
          : null;
      var imageUrl = '';

      if (file != null) {
        var uploadPhotoCampaign = _storage.createFile(
          bucketId: dotenv.env['BUCKET_IMAGE_CAMPAIGN'] ?? 'default-bucket',
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
                  'https://cloud.appwrite.io/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${dotenv.env['PROJECT_ID'] ?? 'default-project'}&mode=admin';
            } else {
              imageUrl = '';
            }
          },
        );
      }

      Constants.logger.d('IMAGE URL $imageUrl');

      var result = await _tablesDB.updateRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId:
            dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        rowId: campaignRequest.id ?? ID.unique(),
        data: (imageUrl.isNotEmpty)
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
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId:
            dotenv.env['CAMPAIGN_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.orderDesc('dateStartCampaign'),
          Query.equal('isDeleted', false),
          Query.equal('isActive', true),
          Query.equal('createdBy', userId)
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
