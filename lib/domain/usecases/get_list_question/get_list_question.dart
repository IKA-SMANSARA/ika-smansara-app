import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetListQuestion implements UseCase<Result<List<ThreadsDocument>>, void> {
  final ThreadsRepository _threadsRepository;

  GetListQuestion({required ThreadsRepository threadsRepository})
      : _threadsRepository = threadsRepository;

  @override
  Future<Result<List<ThreadsDocument>>> call(void _) async {
    var result = await _threadsRepository.getListThreads();

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
