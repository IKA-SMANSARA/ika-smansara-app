import 'package:dio/dio.dart';
import 'package:ika_smansara/data/helpers/network_client_helper_admin.dart';
import 'package:ika_smansara/data/repositories/payment_gateway_repository.dart';
import 'package:ika_smansara/data/services/payment_gateway_service.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class PaymentGatewayRepositoryAdminImpl implements PaymentGatewayRepository {
  final PaymentGatewayService _paymentGatewayService;

  PaymentGatewayRepositoryAdminImpl({
    PaymentGatewayService? paymentGatewayService,
  }) : _paymentGatewayService = paymentGatewayService ??
            PaymentGatewayService(
              NetworkClientHelperAdmin.instance.midtransSNAPClient,
            );

  @override
  Future<Result<MidtransTransactionResponse>> getAcquiringTransactionToken({
    required MidtransTransactionRequest midtransTransactionRequest,
  }) async {
    try {
      var result = await _paymentGatewayService.acquiringTransactionToken(
        midtransTransactionRequest.toJson(),
      );

      Constants.logger.d(result);

      return Result.success(
        result,
      );
    } on DioException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
