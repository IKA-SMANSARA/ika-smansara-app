import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/usecases/get_account_bank_by_user_id/get_account_bank_by_user_id.dart';
import 'package:ika_smansara/domain/usecases/get_account_bank_by_user_id/get_account_bank_by_user_id_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_account_bank_by_user_id_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_account_bank_by_user_id_provider.g.dart';

@riverpod
Future<List<UserAccountBankDocument>> getAccountBankByUserId(
  GetAccountBankByUserIdRef ref, {
  required String userId,
}) async {
  GetAccountBankByUserId getAccountBankByUserIdList = ref.read(
    getAccountBankByUserIdUseCaseProvider,
  );

  var result = await getAccountBankByUserIdList(
    GetAccountBankByUserIdParams(
      userId: userId,
    ),
  );

  return switch (result) {
    Success(value: final bankAccount) => bankAccount,
    Failed(message: _) => const [],
  };
}
