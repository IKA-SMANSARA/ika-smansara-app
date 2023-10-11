import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

abstract class PaymentGatewayRepository {
  Future<Resource<MidtransTransactionResponse>> getAcquiringTransactionToken(
    MidtransTransactionRequest midtransTransactionRequest,
  );
}
