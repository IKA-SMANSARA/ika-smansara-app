import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/usecases/get_transactions/get_transactions.dart';
import 'package:ika_smansara/domain/usecases/get_transactions/get_transactions_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_transactions_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_transactions_list_provider.g.dart';

@riverpod
Future<List<TransactionDocument>> getTransactionsList(
  GetTransactionsListRef ref, {
  required String userId,
}) async {
  GetTransactions getTransactions = ref.read(getTransactionsUseCaseProvider);
  var result = await getTransactions(
    GetTransactionsParams(
      userId: userId,
    ),
  );

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => const [],
  };
}
