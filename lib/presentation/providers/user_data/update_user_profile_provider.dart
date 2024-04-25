import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';
import 'package:ika_smansara/domain/usecases/update_user_profile/update_user_profile.dart';
import 'package:ika_smansara/domain/usecases/update_user_profile/update_user_profile_params.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/update_user_profile_use_case_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_user_profile_provider.g.dart';

@riverpod
class UpdateUserProfileDoc extends _$UpdateUserProfileDoc {
  @override
  Future<UserProfileDocument?> build() async => null;

  Future<void> updateUserProfileDoc({
    required UserProfileRequest userProfileRequest,
    File? imageFile,
  }) async {
    UpdateUserProfile updateUserProfile =
        ref.read(updateUserProfileUseCaseProvider);

    var result = await updateUserProfile(
      UpdateUserProfileParams(
        userProfileRequest: userProfileRequest,
        imageFile: imageFile,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        ref.refresh(userDataProvider);
        ref.read(routerProvider).pop();
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
