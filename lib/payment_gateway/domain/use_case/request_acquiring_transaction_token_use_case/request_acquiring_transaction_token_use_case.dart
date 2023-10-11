import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestAcquiringTransactionTokenUseCase {
  RequestAcquiringTransactionTokenUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Resource<MidtransTransactionResponse>> call(
    String? grossAmount,
    String? orderId,
  ) async {
    final midtransTransactionDetailsRequest = MidtransTransactionDetailsRequest(
      grossAmount: grossAmount,
      orderId: orderId,
    );
    const midtransCreditCardRequest = MidtransCreditCardRequest();
    final midtransTransactionRequest = MidtransTransactionRequest(
      midtransCreditCardRequest: midtransCreditCardRequest,
      midtransTransactionDetailsRequest: midtransTransactionDetailsRequest,
    );

    return _paymentGatewayRepository
        .getAcquiringTransactionToken(midtransTransactionRequest);
  }
}
