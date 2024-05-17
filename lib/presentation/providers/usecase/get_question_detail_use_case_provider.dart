import 'package:ika_smansara/domain/usecases/get_question_detail/get_question_detail.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_question_detail_use_case_provider.g.dart';

@riverpod
GetQuestionDetail getQuestionDetailUseCase(GetQuestionDetailUseCaseRef ref) =>
    GetQuestionDetail(
      threadsRepository: ref.watch(threadsRepositoryProvider),
    );
