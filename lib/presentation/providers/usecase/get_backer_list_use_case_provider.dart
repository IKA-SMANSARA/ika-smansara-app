import 'package:ika_smansara/domain/usecases/get_backer_list/get_backer_list.dart';
import 'package:ika_smansara/presentation/providers/repositories/transaction_repository.dart/transaction_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_backer_list_use_case_provider.g.dart';

@riverpod
GetBackerList getBackerListUseCase(GetBackerListUseCaseRef ref) => GetBackerList(
    transactionRepository: ref.watch(
      transactionRepositoryProvider,
    ),
  );
