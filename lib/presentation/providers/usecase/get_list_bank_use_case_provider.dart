import 'package:ika_smansara/domain/usecases/get_list_bank/get_list_bank.dart';
import 'package:ika_smansara/presentation/providers/repositories/list_bank_repository/list_bank_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_bank_use_case_provider.g.dart';

@riverpod
GetListBank getListBankUseCase(GetListBankUseCaseRef ref) => GetListBank(
      listBankRepository: ref.watch(listBankRepositoryProvider),
    );
