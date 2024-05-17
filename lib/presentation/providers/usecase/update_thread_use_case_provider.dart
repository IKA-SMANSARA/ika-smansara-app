import 'package:ika_smansara/domain/usecases/update_thread/update_thread.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_thread_use_case_provider.g.dart';

@riverpod
UpdateThread updateThreadUseCase(UpdateThreadUseCaseRef ref) => UpdateThread(
      threadsRepository: ref.watch(threadsRepositoryProvider),
    );
