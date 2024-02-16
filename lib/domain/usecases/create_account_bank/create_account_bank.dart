import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreateAccountBank
    implements
        UseCase<Result<UserAccountBankDocument>, CreateAccountBankParams> {
  final UserBankAccountRepository _userBankAccountRepository;

  CreateAccountBank(
      {required UserBankAccountRepository userBankAccountRepository})
      : _userBankAccountRepository = userBankAccountRepository;

  @override
  Future<Result<UserAccountBankDocument>> call(
    CreateAccountBankParams params,
  ) async {
    var result = await _userBankAccountRepository.createAccountBank(
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
