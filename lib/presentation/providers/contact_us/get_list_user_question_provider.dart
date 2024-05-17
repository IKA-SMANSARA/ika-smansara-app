import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_list_question_by_user_id/get_list_question_by_user_id.dart';
import 'package:ika_smansara/domain/usecases/get_list_question_by_user_id/get_list_question_by_user_id_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_list_question_by_user_id_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_user_question_provider.g.dart';

@riverpod
Future<List<ThreadsDocument>?> getListUserQuestion(
  GetListUserQuestionRef ref, {
  required String userId,
}) async {
  GetListQuestionByUserId getListQuestionByUserId = ref.read(
    getListQuestionByUserIdUseCaseProvider,
  );

  var result = await getListQuestionByUserId(
    GetListQuestionByUserIdParams(
      userId: userId,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => const [],
  };
}
