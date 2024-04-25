import 'dart:io';

import 'package:ika_smansara/domain/entities/user_profile_request.dart';

class UpdateUserProfileParams {
  final UserProfileRequest userProfileRequest;
  final File? imageFile;

  UpdateUserProfileParams({
    required this.userProfileRequest,
    this.imageFile,
  });
}
