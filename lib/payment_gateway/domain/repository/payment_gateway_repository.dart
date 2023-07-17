import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

abstract class PaymentGatewayRepository {
  Future<Resource<PaymentMethodResponse>> getPaymentMethod(
    PaymentMethodRequest paymentMethodRequest,
  );

  Future<Resource<TransactionResponse>> requestTransaction(
    TransactionRequest transactionRequest,
  );

  Future<Resource<PaymentTransactionStatusResponse>> checkTransactionStatus(
    String merchantCode,
    String merchantOrderId,
    String signature,
  );
}
