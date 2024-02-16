import 'package:ika_smansara/domain/usecases/get_transactions/get_transactions.dart';
import 'package:ika_smansara/presentation/providers/repositories/transaction_repository.dart/transaction_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_transactions_use_case_provider.g.dart';

@riverpod
GetTransactions getTransactionsUseCase(GetTransactionsUseCaseRef ref) =>
    GetTransactions(
      transactionRepository: ref.watch(
        transactionRepositoryProvider,
      ),
    );
