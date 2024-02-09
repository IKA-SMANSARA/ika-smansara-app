import 'package:ika_smansara/data/repositories/transaction_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/usecases/get_backer_list/get_backer_list_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetBackerList
    implements UseCase<Result<List<TransactionDocument>>, GetBackerListParams> {
  final TransactionRepository _transactionRepository;

  GetBackerList({required TransactionRepository transactionRepository})
      : _transactionRepository = transactionRepository;

  @override
  Future<Result<List<TransactionDocument>>> call(
      GetBackerListParams params) async {
    var result = await _transactionRepository.getAllBacker(
      isSortList: params.isSortList,
      campaignId: params.campaignId,
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
