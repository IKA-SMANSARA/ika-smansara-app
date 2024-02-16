import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/usecases/get_detail_transaction/get_detail_transaction.dart';
import 'package:ika_smansara/domain/usecases/get_detail_transaction/get_detail_transaction_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_transaction_detail_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_transaction_detail_provider.g.dart';

@riverpod
Future<TransactionDocument?> getTransactionDetail(
  GetTransactionDetailRef ref, {
  required String transactionId,
}) async {
  GetDetailTransaction getDetailTransaction = ref.read(
    getTransactionDetailUseCaseProvider,
  );

  var result = await getDetailTransaction(
    GetDetailTransactionParams(
      transactionId: transactionId,
    ),
  );

  Constants.logger.d(result.resultValue);

  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}
