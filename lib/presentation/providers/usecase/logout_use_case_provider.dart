import 'package:ika_smansara/domain/usecases/logout/logout.dart';
import 'package:ika_smansara/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_use_case_provider.g.dart';

@riverpod
Logout logoutUseCase(LogoutUseCaseRef ref) => Logout(
      authentication: ref.watch(
        authenticationProvider,
      ),
    );
