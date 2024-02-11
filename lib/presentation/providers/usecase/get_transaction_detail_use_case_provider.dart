import 'package:ika_smansara/domain/usecases/get_detail_transaction/get_detail_transaction.dart';
import 'package:ika_smansara/presentation/providers/repositories/transaction_repository.dart/transaction_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_transaction_detail_use_case_provider.g.dart';

@riverpod
GetDetailTransaction getTransactionDetailUseCase(
        GetTransactionDetailUseCaseRef ref) =>
    GetDetailTransaction(
      transactionRepository: ref.watch(transactionRepositoryProvider),
    );
