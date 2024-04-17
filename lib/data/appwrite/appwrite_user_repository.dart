import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';

class AppwriteUserRepository implements UserRepository {
  final Client _appwriteClient;

  AppwriteUserRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<UserProfileDocument>> createUser({
    required UserProfileRequest userProfileRequest,
  }) async {
    try {
      Constants.logger.d(userProfileRequest.authKey);
      var result = await _databases.createDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['USER_PROFILE_DOCUMENT_ID'].toString(),
        documentId: userProfileRequest.authKey ?? 'unique()',
        data: userProfileRequest.toJson(),
        permissions: [
          Permission.write(
            Role.any(),
          ),
          Permission.read(
            Role.any(),
          ),
          Permission.update(
            Role.any(),
          ),
        ],
      );

      Constants.logger.d(result);

      return Result.success(
        UserProfileDocument.fromJson(result.toMap()),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserProfileDocument>> getUser({
    required String uid,
  }) async {
    try {
      final result = await _databases.getDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['USER_PROFILE_DOCUMENT_ID'].toString(),
        documentId: uid,
      );

      Constants.logger.d(result);

      return Result.success(
        UserProfileDocument.fromJson(result.data),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserProfileDocument>> updateUser({
    required UserProfileRequest userProfileRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['USER_PROFILE_DOCUMENT_ID'].toString(),
        documentId: userProfileRequest.authKey ?? 'unique()',
        data: userProfileRequest.toJson(),
      );

      Constants.logger.d(result);

      return Result.success(
        UserProfileDocument.fromJson(result.toMap()),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserProfileDocument>> uploadProfilePicture({
    required UserProfileRequest userProfileRequest,
    required File imageFile,
  }) async {
    try {
      final Storage _storage = Storage(_appwriteClient);

      var uploadPhotoProfile = _storage.createFile(
        bucketId: dotenv.env['BUCKET_USER_ID'].toString(),
        fileId: userProfileRequest.authKey ?? 'unique()',
        file: InputFile.fromPath(
          path: imageFile.path,
          filename: '${userProfileRequest.authKey}_${imageFile.path}',
        ),
        permissions: [
          Permission.read(
            Role.any(),
          ),
        ],
      );

      var imageUrl = '';

      uploadPhotoProfile.then((response) {
        if (response.chunksTotal == response.sizeOriginal) {
          imageUrl =
              'https://cloud.appwrite.io/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${dotenv.env['PROJECT_ID'].toString()}&mode=admin';
        } else {
          imageUrl = '';
        }
      });

      Constants.logger.d('IMAGE URL $imageUrl');

      if (imageUrl != '') {
        var result = await updateUser(
            userProfileRequest: userProfileRequest.copyWith(
          photoProfileUrl: imageUrl,
        ));

        Constants.logger.d(result);

        if (result.isSuccess) {
          return Result.success(result.resultValue ?? UserProfileDocument());
        } else {
          return Result.failed(result.errorMessage ?? 'Error!');
        }
      } else {
        return Result.failed('Error! failed get image url!');
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserProfileDocument>> deleteUser({
    required UserProfileRequest userProfileRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['USER_PROFILE_DOCUMENT_ID'].toString(),
        documentId: userProfileRequest.authKey!,
        data: userProfileRequest.toJson(),
      );

      Constants.logger.d(result);

      return Result.success(
        UserProfileDocument.fromJson(result.toMap()),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
