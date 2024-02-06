import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';
import 'package:ika_smansara/domain/usecases/register/register_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class Register implements UseCase<Result<UserProfileDocument>, RegisterParams> {
  final Authentication _authentication;
  final UserRepository _userRepository;

  Register({
    required Authentication authentication,
    required UserRepository userRepository,
  })  : _authentication = authentication,
        _userRepository = userRepository;

  @override
  Future<Result<UserProfileDocument>> call(RegisterParams params) async {
    var resultRegister = await _authentication.register(
      userId: 'unique()',
      email: params.email,
      password: params.password,
      name: params.name,
    );

    Constants.logger.d(resultRegister.resultValue);

    if (resultRegister.isSuccess) {
      var getSession = await _authentication.login(
        email: params.email,
        password: params.password,
      );

      if (getSession.isSuccess) {
        var resultCreateUser = await _userRepository.createUser(
          userProfileRequest: UserProfileRequest(
            address: params.address,
            authKey: resultRegister.resultValue?.id,
            email: params.email,
            graduateYear: params.graduateYear ?? '0',
            isAlumni: params.isAlumni ?? false,
            name: params.name,
            phone: params.phone,
            photoProfileUrl: null,
          ),
        );

        Constants.logger.d(resultCreateUser.resultValue);

        if (resultCreateUser.isSuccess) {
          return Result.success(
            resultCreateUser.resultValue ?? UserProfileDocument(),
          );
        } else {
          return Result.failed(
            resultCreateUser.errorMessage ?? 'Failed register user',
          );
        }
      } else {
        return Result.failed(
          getSession.errorMessage ?? 'Failed register user',
        );
      }
    } else {
      return Result.failed(
        resultRegister.errorMessage ?? 'Failed get user data',
      );
    }
  }
}
