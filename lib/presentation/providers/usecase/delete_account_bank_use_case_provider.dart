import 'package:ika_smansara/domain/usecases/delete_account_bank/delete_account_bank.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_bank_account_repository/user_bank_account_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_account_bank_use_case_provider.g.dart';

@riverpod
DeleteAccountBank deleteAccountBankUseCase(DeleteAccountBankUseCaseRef ref) =>
    DeleteAccountBank(
      userBankAccountRepository: ref.watch(userBankAccountRepositoryProvider),
    );
