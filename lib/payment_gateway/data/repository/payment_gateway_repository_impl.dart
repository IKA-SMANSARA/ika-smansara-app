import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PaymentGatewayRepository)
class PaymentGatewayRepositoryImpl implements PaymentGatewayRepository {
  PaymentGatewayRepositoryImpl(this._apiServicesPaymentGateway);

  final ApiServicesPaymentGateway _apiServicesPaymentGateway;

  @override
  Future<Resource<MidtransTransactionResponse>> getAcquiringTransactionToken(
    MidtransTransactionRequest midtransTransactionRequest,
  ) async {
    Resource<MidtransTransactionResponse> result;

    try {
      final responseMidtransTransaction =
          await _apiServicesPaymentGateway.acquiringTransactionToken(
        midtransTransactionRequest.toMidtransTransactionRequestDTO(),
      );

      if (responseMidtransTransaction.isSuccessful) {
        result = Resource.success(
          MidtransTransactionResponseDTO.fromJson(
            responseMidtransTransaction.body as Map<String, dynamic>,
          ).toMidtransTransactionResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responseMidtransTransaction.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          const MidtransTransactionResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result =
          Resource.error(e.toString(), const MidtransTransactionResponse());
    }

    return result;
  }
}
