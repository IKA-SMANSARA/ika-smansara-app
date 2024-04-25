import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/usecases/update_user_profile/update_user_profile_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class UpdateUserProfile
    implements UseCase<Result<UserProfileDocument>, UpdateUserProfileParams> {
  final UserRepository _userRepository;

  UpdateUserProfile({required UserRepository userRepository})
      : _userRepository = userRepository;

  @override
  Future<Result<UserProfileDocument>> call(
      UpdateUserProfileParams params) async {
    var result = await _userRepository.updateUser(
      userProfileRequest: params.userProfileRequest,
      imageFile: params.imageFile,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
