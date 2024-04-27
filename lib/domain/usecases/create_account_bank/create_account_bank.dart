import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:ika_smansara/data/repositories/payout_gateway_repository.dart';
import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:ika_smansara/domain/entities/beneficiaries_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreateAccountBank
    implements
        UseCase<Result<UserAccountBankDocument>, CreateAccountBankParams> {
  final UserBankAccountRepository _userBankAccountRepository;
  final PayoutGatewayRepository _payoutGatewayRepository;

  CreateAccountBank({
    required UserBankAccountRepository userBankAccountRepository,
    required PayoutGatewayRepository payoutGatewayRepository,
  })  : _userBankAccountRepository = userBankAccountRepository,
        _payoutGatewayRepository = payoutGatewayRepository;

  @override
  Future<Result<UserAccountBankDocument>> call(
    CreateAccountBankParams params,
  ) async {
    var beneficiariesRequest = BeneficiariesRequest(
      account: params.userAccountBankRequest.bankAccountNumber,
      aliasName: params.userAccountBankRequest.userName?.removeWhitespace,
      bank: params.userAccountBankRequest.bankCode,
      email: params.userAccountBankRequest.email,
      name: params.userAccountBankRequest.realUserName,
    );

    var resultPayout = await _payoutGatewayRepository.createBeneficiaries(
        beneficiariesRequest: beneficiariesRequest);

    Constants.logger.d(resultPayout.resultValue);

    if (resultPayout is Success) {
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
    } else {
      Constants.logger.e(resultPayout.errorMessage);
      return Result.failed(resultPayout.errorMessage ?? 'Error!');
    }
  }
}
