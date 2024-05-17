import 'package:ika_smansara/domain/usecases/get_list_question/get_list_question.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_question_use_case_provider.g.dart';

@riverpod
GetListQuestion getListQuestionUseCase(GetListQuestionUseCaseRef ref) =>
    GetListQuestion(
      threadsRepository: ref.watch(threadsRepositoryProvider),
    );
