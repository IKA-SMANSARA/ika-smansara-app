import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/get_list_question_by_user_id/get_list_question_by_user_id_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetListQuestionByUserId
    implements
        UseCase<Result<List<ThreadsDocument>>, GetListQuestionByUserIdParams> {
  final ThreadsRepository _threadsRepository;

  GetListQuestionByUserId({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<List<ThreadsDocument>>> call(
    GetListQuestionByUserIdParams params,
  ) async {
    var result = await _threadsRepository.getListThreadsByUserId(
      userId: params.userId,
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
