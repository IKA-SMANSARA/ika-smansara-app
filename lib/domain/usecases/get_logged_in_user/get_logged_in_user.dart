import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetLoggedInUser implements UseCase<Result<UserProfileDocument>, void> {
  final Authentication _authentication;
  final UserRepository _userRepository;

  GetLoggedInUser({
    required Authentication authentication,
    required UserRepository userRepository,
  })  : _authentication = authentication,
        _userRepository = userRepository;

  @override
  Future<Result<UserProfileDocument>> call(void _) async {
    String? loggedIn = await _authentication.getLoggedInUserId();

    Constants.logger.i(loggedIn);

    if (loggedIn != null) {
      var resultUserProfile = await _userRepository.getUser(
        uid: loggedIn,
      );

      Constants.logger.i(resultUserProfile);

      if (resultUserProfile.isSuccess) {
        return Result.success(
          resultUserProfile.resultValue ?? UserProfileDocument(),
        );
      } else {
        return Result.failed(
          resultUserProfile.errorMessage ?? 'Failed get user',
        );
      }
    } else {
      return const Result.failed('No user logged in');
    }
  }
}
