import 'package:ika_smansara/domain/usecases/get_list_answer_by_thread_id/get_list_answer_by_thread_id.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_answer_use_case_provider.g.dart';

@riverpod
GetListAnswerByThreadId getListAnswerUseCase(GetListAnswerUseCaseRef ref) =>
    GetListAnswerByThreadId(
      threadsRepository: ref.watch(threadsRepositoryProvider),
    );
