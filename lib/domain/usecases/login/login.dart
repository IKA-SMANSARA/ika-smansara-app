import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/usecases/login/login_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class Login implements UseCase<Result<UserProfileDocument>, LoginParams> {
  final Authentication _authentication;
  final UserRepository _userRepository;

  Login({
    required Authentication authentication,
    required UserRepository userRepository,
  })  : _authentication = authentication,
        _userRepository = userRepository;

  @override
  Future<Result<UserProfileDocument>> call(LoginParams params) async {
    var loginResult = await _authentication.login(
      email: params.email,
      password: params.password,
    );

    Constants.logger.d(loginResult);

    if (loginResult is Success) {
      var userResult = await _userRepository.getUser(
        uid: loginResult.resultValue?.userId ?? '',
      );

      Constants.logger.d(userResult);

      return switch (userResult) {
        Success(value: final user) => Result.success(user),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(loginResult.errorMessage);
      return Result.failed(loginResult.errorMessage ?? 'Error!');
    }
  }
}
