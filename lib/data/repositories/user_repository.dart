import 'dart:io';

import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';

abstract interface class UserRepository {
  Future<Result<UserProfileDocument>> createUser({
    required UserProfileRequest userProfileRequest,
  });
  Future<Result<UserProfileDocument>> getUser({
    required String uid,
  });
  Future<Result<UserProfileDocument>> deleteUser({
    required UserProfileRequest userProfileRequest,
  });
  Future<Result<UserProfileDocument>> updateUser({
    required UserProfileRequest userProfileRequest,
  });
  Future<Result<UserProfileDocument>> uploadProfilePicture({
    required UserProfileRequest userProfileRequest,
    required File imageFile,
  });
}
