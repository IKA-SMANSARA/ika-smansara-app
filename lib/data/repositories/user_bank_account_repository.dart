import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';

abstract interface class UserBankAccountRepository {
  Future<Result<List<UserAccountBankDocument>>> getAccountBankByUserId({
    required String userId,
  });

  Future<Result<UserAccountBankDocument>> getDetailAccountBank({
    required String accountBankId,
  });

  Future<Result<UserAccountBankDocument>> createAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  });

  Future<Result<UserAccountBankDocument>> updateAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  });

  Future<Result<UserAccountBankDocument>> deleteAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  });
}
