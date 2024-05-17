import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_list_question/get_list_question.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_list_question_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_all_question_provider.g.dart';

@riverpod
Future<List<ThreadsDocument>?> getListAllQuestion(
    GetListAllQuestionRef ref) async {
  GetListQuestion getListQuestion = ref.read(
    getListQuestionUseCaseProvider,
  );

  var result = await getListQuestion(null);

  Constants.logger.d(result.resultValue);

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => const [],
  };
}
