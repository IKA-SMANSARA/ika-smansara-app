import 'package:ika_smansara/domain/usecases/register/register.dart';
import 'package:ika_smansara/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_use_case_provider.g.dart';

@riverpod
Register registerUseCase(RegisterUseCaseRef ref) => Register(
      authentication: ref.watch(authenticationProvider),
      userRepository: ref.watch(userRepositoryProvider),
    );
