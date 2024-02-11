import 'package:ika_smansara/domain/usecases/get_account_bank_by_user_id/get_account_bank_by_user_id.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_bank_account_repository/user_bank_account_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_account_bank_by_user_id_use_case_provider.g.dart';

@riverpod
GetAccountBankByUserId getAccountBankByUserIdUseCase(
        GetAccountBankByUserIdUseCaseRef ref) =>
    GetAccountBankByUserId(
      userBankAccountRepository: ref.watch(userBankAccountRepositoryProvider),
    );
