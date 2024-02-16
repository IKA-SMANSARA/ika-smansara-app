import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_bank_account_repository/user_bank_account_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_account_bank_use_case_provider.g.dart';

@riverpod
CreateAccountBank createAccountBankUseCase(CreateAccountBankUseCaseRef ref) =>
    CreateAccountBank(
      userBankAccountRepository: ref.watch(
        userBankAccountRepositoryProvider,
      ),
    );
