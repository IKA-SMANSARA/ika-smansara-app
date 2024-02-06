import 'package:ika_smansara/domain/usecases/login/login.dart';
import 'package:ika_smansara/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_use_case_provider.g.dart';

@riverpod
Login loginUseCase(LoginUseCaseRef ref) => Login(
      authentication: ref.watch(authenticationProvider),
      userRepository: ref.watch(userRepositoryProvider),
    );
