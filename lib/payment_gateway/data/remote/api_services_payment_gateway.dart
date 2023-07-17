// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/data/remote/dto/payment_method_request_dto.dart';
import 'package:ika_smansara/payment_gateway/data/remote/dto/transaction_request_dto.dart';

part 'api_services_payment_gateway.chopper.dart';

@ChopperApi()
abstract class ApiServicesPaymentGateway extends ChopperService {
  static ApiServicesPaymentGateway create([ChopperClient? client]) =>
      _$ApiServicesPaymentGateway(client);

  // get payment method
  @Post(
    path: 'paymentmethod/getpaymentmethod',
    headers: {
      Constants.contentType: Constants.applicationJson,
    },
  )
  Future<Response> getPaymentMethod(
    @Body() PaymentMethodRequestDTO paymentMethodRequestDTO,
  );

  // request transaction
  @Post(
    path: 'v2/inquiry',
    headers: {
      Constants.contentType: Constants.applicationJson,
    },
  )
  Future<Response> requestTransaction(
    @Body() TransactionRequestDTO transactionRequestDTO,
  );

  // check transaction
  @FactoryConverter(
    request: FormUrlEncodedConverter.requestFactory,
  )
  @Post(
    path: 'transactionStatus',
    headers: {
      Constants.contentType: Constants.applicationJson,
    },
  )
  Future<Response> checkTransactionStatus(
    @Field(Constants.merchantCodeKey) String merchantCode,
    @Field(Constants.merchantOrderIdKey) String merchantOrderId,
    @Field(Constants.signatureKey) String signature,
  );
}
