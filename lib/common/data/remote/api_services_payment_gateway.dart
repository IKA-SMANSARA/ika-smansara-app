// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'api_services_payment_gateway.chopper.dart';

@ChopperApi()
abstract interface class ApiServicesPaymentGateway extends ChopperService {
  static ApiServicesPaymentGateway create([ChopperClient? client]) =>
      _$ApiServicesPaymentGateway(client);

  // request transaction
  // prod
  // @Post(
  //   headers: {
  //     'Accept': 'application/json',
  //     'Authorization': 'Basic TWlkLXNlcnZlci1RdS1kM0RVNWR6am5MQWt4RUk1ZHgtUF8=',
  //     'Content-Type': 'application/json',
  //   },
  // )
  // Future<Response> acquiringTransactionToken(
  //   @Body() MidtransTransactionRequestDTO midtransTransactionRequestDTO,
  // );

  // dev
  @Post(
    headers: {
      'Accept': 'application/json',
      'Authorization':
          'Basic U0ItTWlkLXNlcnZlci1KaGtIazUxU2VpalRhYW9QTHRrRzNNYU0=',
      'Content-Type': 'application/json',
    },
  )
  Future<Response> acquiringTransactionToken(
    @Body() MidtransTransactionRequestDTO midtransTransactionRequestDTO,
  );
}
