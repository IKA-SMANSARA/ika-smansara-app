// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'api_services_payment_gateway.chopper.dart';

@ChopperApi()
abstract class ApiServicesPaymentGateway extends ChopperService {
  static ApiServicesPaymentGateway create([ChopperClient? client]) =>
      _$ApiServicesPaymentGateway(client);

  // request transaction
  @Post(
    headers: {
      'Accept': 'application/json',
      'Authorization':
          'Basic U0ItTWlkLXNlcnZlci15d09YOE1TRXM4TlJFOElTQV90bi1NMEE6',
      'Content-Type': 'application/json',
    },
  )
  Future<Response> acquiringTransactionToken(
    @Body() MidtransTransactionRequestDTO midtransTransactionRequestDTO,
  );
}
