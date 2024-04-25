import 'package:ika_smansara/domain/usecases/update_user_profile/update_user_profile.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_user_profile_use_case_provider.g.dart';

@riverpod
UpdateUserProfile updateUserProfileUseCase(UpdateUserProfileUseCaseRef ref) =>
    UpdateUserProfile(
      userRepository: ref.watch(userRepositoryProvider),
    );
