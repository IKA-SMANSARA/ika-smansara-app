import 'package:ika_smansara/domain/usecases/update_account_bank/update_account_bank.dart';
import 'package:ika_smansara/presentation/providers/repositories/payout_gateway_repository/payout_gateway_repository_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/user_bank_account_repository/user_bank_account_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_account_bank_use_case_provider.g.dart';

@riverpod
UpdateAccountBank updateAccountBankUseCase(UpdateAccountBankUseCaseRef ref) =>
    UpdateAccountBank(
      userBankAccountRepository: ref.watch(userBankAccountRepositoryProvider),
      payoutGatewayRepository: ref.watch(
        payoutGatewayRepositoryProvider,
      ),
    );
