import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_list_answer_by_thread_id/get_list_answer_by_thread_id.dart';
import 'package:ika_smansara/domain/usecases/get_list_answer_by_thread_id/get_list_answer_by_thread_id_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_list_answer_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_answer_provider.g.dart';

@riverpod
Future<List<ThreadsDocument>?> getListAnswer(
  GetListAnswerRef ref, {
  required String threadId,
}) async {
  GetListAnswerByThreadId getListAnswerByThreadId = ref.read(
    getListAnswerUseCaseProvider,
  );

  var result = await getListAnswerByThreadId(
    GetListAnswerByThreadIdParams(
      threadId: threadId,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => const [],
  };
}
