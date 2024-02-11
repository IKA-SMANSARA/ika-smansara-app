import 'package:ika_smansara/data/repositories/payment_gateway_repository.dart';
import 'package:ika_smansara/domain/entities/midtrans_credit_card_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_customer_details_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_item_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_details_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class SnapPayment
    implements UseCase<Result<MidtransTransactionResponse>, SnapPaymentParams> {
  final PaymentGatewayRepository _paymentGatewayRepository;

  SnapPayment({required PaymentGatewayRepository paymentGatewayRepository})
      : _paymentGatewayRepository = paymentGatewayRepository;

  @override
  Future<Result<MidtransTransactionResponse>> call(
      SnapPaymentParams params) async {
    final MidtransCreditCardRequest _midtransCreditCardRequest =
        MidtransCreditCardRequest(
      secure: true,
    );
    final MidtransCustomerDetailsRequest _midtransCustomerDetailsRequest =
        MidtransCustomerDetailsRequest(
      email: params.transactionRequest.userEmail,
      firstName: params.transactionRequest.userName,
      phone: params.transactionRequest.userPhone,
    );
    final MidtransItemRequest _midtransItemRequest = MidtransItemRequest(
      id: params.transactionRequest.campaignId,
      name: params.transactionRequest.campaignName?.substring(0,20),
      price: params.transactionRequest.amount,
      quantity: 1,
    );
    final MidtransTransactionDetailsRequest _midtransTransactionDetailsRequest =
        MidtransTransactionDetailsRequest(
      grossAmount: params.transactionRequest.amount,
      orderId: params.transactionRequest.transactionId,
    );
    final MidtransTransactionRequest _midtransTransactionRequest =
        MidtransTransactionRequest(
      midtransCreditCardRequest: _midtransCreditCardRequest,
      midtransCustomerDetailsRequest: _midtransCustomerDetailsRequest,
      midtransItemRequest: [_midtransItemRequest],
      midtransTransactionDetailsRequest: _midtransTransactionDetailsRequest,
    );

    var result = await _paymentGatewayRepository.getAcquiringTransactionToken(
      midtransTransactionRequest: _midtransTransactionRequest,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
