import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRegisterUseCase {
  UserRegisterUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<ErrorResponse, UserResponse>> call(
    EmailRegisterRequest emailRegisterRequest,
  ) async {
    return _authRepository.userRegister(emailRegisterRequest);
  }
}
