import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/usecases/save_payment/save_payment.dart';
import 'package:ika_smansara/domain/usecases/save_payment/save_payment_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/save_payment_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_payment_transaction_provider.g.dart';

@riverpod
Future<TransactionDocument?> savePaymentTransaction(
  SavePaymentTransactionRef ref, {
  required TransactionRequest transactionRequest,
  required String statusPayment,
}) async {
  SavePayment savePayment = ref.read(savePaymentUseCaseProvider);

  var result = await savePayment(
    SavePaymentParams(
      transactionRequest: transactionRequest,
      statusPayment: statusPayment,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => null,
  };
}
