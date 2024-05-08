import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_question_detail/get_question_detail.dart';
import 'package:ika_smansara/domain/usecases/get_question_detail/get_question_detail_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_question_detail_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_user_question_detail_provider.g.dart';

@riverpod
Future<ThreadsDocument?> getUserQuestionDetail(
  GetUserQuestionDetailRef ref, {
  required String threadId,
}) async {
  GetQuestionDetail getQuestionDetail = ref.read(
    getQuestionDetailUseCaseProvider,
  );

  var result = await getQuestionDetail(
    GetQuestionDetailParams(
      threadId: threadId,
    ),
  );

  Constants.logger.d(result.resultValue);

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => null,
  };
}
