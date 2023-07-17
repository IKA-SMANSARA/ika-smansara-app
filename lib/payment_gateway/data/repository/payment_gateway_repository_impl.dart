import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PaymentGatewayRepository)
class PaymentGatewayRepositoryImpl implements PaymentGatewayRepository {
  PaymentGatewayRepositoryImpl(this._apiServicesPaymentGateway);

  final ApiServicesPaymentGateway _apiServicesPaymentGateway;

  @override
  Future<Resource<PaymentTransactionStatusResponse>> checkTransactionStatus(
    String merchantCode,
    String merchantOrderId,
    String signature,
  ) async {
    Resource<PaymentTransactionStatusResponse> result;

    try {
      final responseCheckTransactionStatus =
          await _apiServicesPaymentGateway.checkTransactionStatus(
        merchantCode,
        merchantOrderId,
        signature,
      );

      if (responseCheckTransactionStatus.isSuccessful) {
        result = Resource.success(
          PaymentTransactionStatusResponseDTO.fromJson(
            responseCheckTransactionStatus.body as Map<String, dynamic>,
          ).toPaymentTransactionStatusResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responseCheckTransactionStatus.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          const PaymentTransactionStatusResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(
        e.toString(),
        const PaymentTransactionStatusResponse(),
      );
    }

    return result;
  }

  @override
  Future<Resource<PaymentMethodResponse>> getPaymentMethod(
    PaymentMethodRequest paymentMethodRequest,
  ) async {
    Resource<PaymentMethodResponse> result;

    try {
      final responsePaymentMethod =
          await _apiServicesPaymentGateway.getPaymentMethod(
        paymentMethodRequest.toPaymentMethodRequestDTO(),
      );

      if (responsePaymentMethod.isSuccessful) {
        result = Resource.success(
          PaymentMethodResponseDTO.fromJson(
            responsePaymentMethod.body as Map<String, dynamic>,
          ).toPaymentMethodResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responsePaymentMethod.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          const PaymentMethodResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(e.toString(), const PaymentMethodResponse());
    }

    return result;
  }

  @override
  Future<Resource<TransactionResponse>> requestTransaction(
    TransactionRequest transactionRequest,
  ) async {
    Resource<TransactionResponse> result;

    try {
      final responsePaymentMethod =
          await _apiServicesPaymentGateway.requestTransaction(
        transactionRequest.toTransactionRequestDTO(),
      );

      if (responsePaymentMethod.isSuccessful) {
        result = Resource.success(
          TransactionResponseDTO.fromJson(
            responsePaymentMethod.body as Map<String, dynamic>,
          ).toTransactionResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responsePaymentMethod.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          const TransactionResponse(),
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(e.toString(), const TransactionResponse());
    }

    return result;
  }
}
