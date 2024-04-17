import 'package:ika_smansara/data/repositories/list_bank_repository.dart';
import 'package:ika_smansara/domain/entities/list_bank_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetListBank implements UseCase<Result<List<ListBankDocument>>, void> {
  final ListBankRepository _listBankRepository;

  GetListBank({required ListBankRepository listBankRepository})
      : _listBankRepository = listBankRepository;

  @override
  Future<Result<List<ListBankDocument>>> call(void params) async {
    var result = await _listBankRepository.getListBank();

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
