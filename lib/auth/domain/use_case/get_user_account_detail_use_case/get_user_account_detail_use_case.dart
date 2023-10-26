import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserAccountDetailUseCase {
  GetUserAccountDetailUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<ErrorResponse, UserResponse>> call() async {
    return _authRepository.getUserAccountDetail();
  }
}
