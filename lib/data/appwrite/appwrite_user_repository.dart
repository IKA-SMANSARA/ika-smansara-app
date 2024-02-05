import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteUserRepository implements UserRepository {
  final Client _appwriteClient;

  AppwriteUserRepository({Client? appwriteClient})
      : _appwriteClient = appwriteClient ??
            Client()
                .setEndpoint(Constants.BASE_URL)
                .setProject(Constants.PROJECT_ID);

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<UserProfileDocument>> createUser({
    required UserProfileRequest userProfileRequest,
  }) async {
    try {
      Constants.logger.d(userProfileRequest.authKey);
      var result = await _databases.createDocument(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.USER_PROFILE_DOCUMENT_ID,
        documentId: userProfileRequest.authKey ?? 'unique()',
        data: userProfileRequest.toJson(),
        permissions: [
          Permission.read(
            Role.user(
              userProfileRequest.authKey!,
            ),
          ),
          Permission.update(
            Role.user(
              userProfileRequest.authKey!,
            ),
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
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.USER_PROFILE_DOCUMENT_ID,
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
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.USER_PROFILE_DOCUMENT_ID,
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
        bucketId: Constants.BUCKET_USER_ID,
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
              'https://cloud.ezhardigital.com/v1/storage/buckets/${response.bucketId}/files/${response.$id}/view?project=${Constants.PROJECT_ID}&mode=admin';
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
    required String uid,
  }) async {
    try {
      // TODO: implement deleteUser
      throw UnimplementedError();
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
