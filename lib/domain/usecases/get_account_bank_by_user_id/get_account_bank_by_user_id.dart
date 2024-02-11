import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/usecases/get_account_bank_by_user_id/get_account_bank_by_user_id_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetAccountBankByUserId
    implements
        UseCase<Result<List<UserAccountBankDocument>>,
            GetAccountBankByUserIdParams> {
  final UserBankAccountRepository _userBankAccountRepository;

  GetAccountBankByUserId(
      {required UserBankAccountRepository userBankAccountRepository})
      : _userBankAccountRepository = userBankAccountRepository;

  @override
  Future<Result<List<UserAccountBankDocument>>> call(
      GetAccountBankByUserIdParams params) async {
    var result = await _userBankAccountRepository.getAccountBankByUserId(
      userId: params.userId,
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
