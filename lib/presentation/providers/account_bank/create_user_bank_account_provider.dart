import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_account_bank_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_user_bank_account_provider.g.dart';

@riverpod
Future<UserAccountBankDocument?> createUserBankAccount(
  CreateUserBankAccountRef ref, {
  required UserAccountBankRequest userAccountBankRequest,
}) async {
  CreateAccountBank createAccountBank = ref.read(
    createAccountBankUseCaseProvider,
  );

  var result = await createAccountBank(
    CreateAccountBankParams(
      userAccountBankRequest: userAccountBankRequest,
    ),
  );

  Constants.logger.d(result.resultValue);

  return switch (result) {
    Success(value: final bankAccount) => bankAccount,
    Failed(message: _) => null,
  };
}
