import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_list_answer_by_thread_id/get_list_answer_by_thread_id_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetListAnswerByThreadId
    implements
        UseCase<Result<List<ThreadsDocument>>, GetListAnswerByThreadIdParams> {
  final ThreadsRepository _threadsRepository;

  GetListAnswerByThreadId({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<List<ThreadsDocument>>> call(
    GetListAnswerByThreadIdParams params,
  ) async {
    var result = await _threadsRepository.getListAnswerThread(
      threadId: params.threadId,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
