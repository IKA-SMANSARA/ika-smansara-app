import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/create_question_to_admin/create_question_to_admin_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreateQuestionToAdmin
    implements UseCase<Result<ThreadsDocument>, CreateQuestionToAdminParams> {
  final ThreadsRepository _threadsRepository;

  CreateQuestionToAdmin({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<ThreadsDocument>> call(
      CreateQuestionToAdminParams params) async {
    var result = await _threadsRepository.postThread(
      threadsRequest: params.threadsRequest,
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
