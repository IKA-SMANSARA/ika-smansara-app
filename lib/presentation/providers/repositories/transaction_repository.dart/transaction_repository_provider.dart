import 'package:ika_smansara/data/appwrite/appwrite_transaction_repository.dart';
import 'package:ika_smansara/data/repositories/transaction_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_repository_provider.g.dart';

@riverpod
TransactionRepository transactionRepository(TransactionRepositoryRef ref) =>
    AppwriteTransactionRepository();
