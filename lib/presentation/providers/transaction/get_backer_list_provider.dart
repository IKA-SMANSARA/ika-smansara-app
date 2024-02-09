import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/usecases/get_backer_list/get_backer_list.dart';
import 'package:ika_smansara/domain/usecases/get_backer_list/get_backer_list_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_backer_list_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_backer_list_provider.g.dart';

@riverpod
Future<List<TransactionDocument>> getBackerList(
  GetBackerListRef ref, {
  required String campaignId,
  required bool isSortList,
}) async {
  GetBackerList getBackerList = ref.read(getBackerListUseCaseProvider);

  var result = await getBackerList(
    GetBackerListParams(
      campaignId: campaignId,
      isSortList: isSortList,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => const [],
  };
}
