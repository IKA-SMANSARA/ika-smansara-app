import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/update_thread/update_thread_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class UpdateThread
    implements UseCase<Result<ThreadsDocument>, UpdateThreadParams> {
  final ThreadsRepository _threadsRepository;

  UpdateThread({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<ThreadsDocument>> call(UpdateThreadParams params) async {
    var result = await _threadsRepository.editThread(
      threadsRequest: params.threadRequest,
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
