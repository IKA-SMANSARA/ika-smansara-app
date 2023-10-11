import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPaymentMethodUseCase {
  GetPaymentMethodUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Resource<PaymentMethodResponse>> call(
    String? merchantCode,
    int? amount,
    String? datetime,
  ) async {
    // package data to map
    final paymentMethodRequest = PaymentMethodRequest(
      merchantCode: merchantCode,
      amount: amount,
      datetime: datetime,
      signature: getPaymentSignatureSHA256(amount),
    );

    return _paymentGatewayRepository.getPaymentMethod(paymentMethodRequest);
  }
}
