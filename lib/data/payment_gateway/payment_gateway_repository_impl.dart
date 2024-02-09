import 'package:dio/dio.dart';
import 'package:ika_smansara/data/repositories/payment_gateway_repository.dart';
import 'package:ika_smansara/data/services/payment_gateway_service.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class PaymentGatewayRepositoryImpl implements PaymentGatewayRepository {
  final PaymentGatewayService _paymentGatewayService;

  PaymentGatewayRepositoryImpl({
    PaymentGatewayService? paymentGatewayService,
  }) : _paymentGatewayService =
            paymentGatewayService ?? PaymentGatewayService();

  @override
  Future<Result<MidtransTransactionResponse>> getAcquiringTransactionToken({
    required MidtransTransactionRequest midtransTransactionRequest,
  }) async {
    try {
      var result = _paymentGatewayService.acquiringTransactionToken(
        midtransTransactionRequest,
      );

      return result.then(
        (response) {
          Constants.logger.d(response);

          return Result.success(
            response,
          );
        },
      );
    } on DioException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
