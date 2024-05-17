import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_question_detail/get_question_detail_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetQuestionDetail
    implements UseCase<Result<ThreadsDocument>, GetQuestionDetailParams> {
  final ThreadsRepository _threadsRepository;

  GetQuestionDetail({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<ThreadsDocument>> call(
    GetQuestionDetailParams params,
  ) async {
    var result = await _threadsRepository.getThread(
      threadId: params.threadId,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
