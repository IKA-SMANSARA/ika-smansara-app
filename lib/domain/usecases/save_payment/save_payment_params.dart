import 'package:ika_smansara/domain/entities/transaction_request.dart';

class SavePaymentParams {
  final TransactionRequest transactionRequest;
  final String statusPayment;

  SavePaymentParams({
    required this.transactionRequest,
    required this.statusPayment,
  });
}
