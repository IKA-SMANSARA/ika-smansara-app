import 'package:ika_smansara/domain/entities/list_bank_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_list_bank/get_list_bank.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_list_bank_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_bank_provider.g.dart';

@riverpod
Future<List<ListBankDocument>> getListBankDoc(GetListBankDocRef ref) async {
  GetListBank getListBankDoc = ref.read(getListBankUseCaseProvider);

  var result = await getListBankDoc(null);

  return switch (result) {
    Success(value: final listBank) => listBank,
    Failed(message: _) => const [],
  };
}
