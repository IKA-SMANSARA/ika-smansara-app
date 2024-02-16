import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/snap_payment_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_url_webview_provider.g.dart';

@riverpod
Future<MidtransTransactionResponse?> getUrlWebview(
  GetUrlWebviewRef ref, {
  required TransactionRequest transactionRequest,
}) async {
  SnapPayment snapPayment = ref.read(snapPaymentUseCaseProvider);

  var result = await snapPayment(
    SnapPaymentParams(
      transactionRequest: transactionRequest,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => null,
  };
}
