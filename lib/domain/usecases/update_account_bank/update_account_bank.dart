import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/usecases/update_account_bank/update_account_bank_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class UpdateAccountBank
    implements
        UseCase<Result<UserAccountBankDocument>, UpdateAccountBankParams> {
  final UserBankAccountRepository _userBankAccountRepository;

  UpdateAccountBank(
      {required UserBankAccountRepository userBankAccountRepository})
      : _userBankAccountRepository = userBankAccountRepository;

  @override
  Future<Result<UserAccountBankDocument>> call(
      UpdateAccountBankParams params) async {
    var result = await _userBankAccountRepository.updateAccountBank(
      userAccountBankRequest: params.userAccountBankRequest,
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
