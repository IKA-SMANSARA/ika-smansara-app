// ignore_for_file: strict_raw_type

import 'package:chopper/chopper.dart';

part 'api_services_payment_gateway.chopper.dart';

@ChopperApi()
abstract class ApiServicesPaymentGateway extends ChopperService {
  static ApiServicesPaymentGateway create([ChopperClient? client]) =>
      _$ApiServicesPaymentGateway(client);

// get payment type
// request transaction
// check transaction
}
