import 'package:ika_smansara/domain/usecases/get_list_question_by_user_id/get_list_question_by_user_id.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_question_by_user_id_use_case_provider.g.dart';

@riverpod
GetListQuestionByUserId getListQuestionByUserIdUseCase(
    GetListQuestionByUserIdUseCaseRef ref) {
  return GetListQuestionByUserId(
    threadsRepository: ref.watch(
      threadsRepositoryProvider,
    ),
  );
}
