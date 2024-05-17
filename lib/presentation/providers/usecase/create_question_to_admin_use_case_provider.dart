import 'package:ika_smansara/domain/usecases/create_question_to_admin/create_question_to_admin.dart';
import 'package:ika_smansara/presentation/providers/repositories/threads_repository/threads_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_question_to_admin_use_case_provider.g.dart';

@riverpod
CreateQuestionToAdmin createQuestionToAdminUseCase(
        CreateQuestionToAdminUseCaseRef ref) =>
    CreateQuestionToAdmin(
      threadsRepository: ref.watch(
        threadsRepositoryProvider,
      ),
    );
