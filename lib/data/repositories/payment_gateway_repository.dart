import 'package:ika_smansara/domain/entities/midtrans_transaction_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class PaymentGatewayRepository {
  Future<Result<MidtransTransactionResponse>> getAcquiringTransactionToken({
    required MidtransTransactionRequest midtransTransactionRequest,
  });
}
