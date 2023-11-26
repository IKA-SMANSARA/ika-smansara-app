import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiInterfacePaymentGatewayNetworkModule {
  @lazySingleton
  ApiServicesPaymentGateway apiServicesPaymentGateway(
    @Named(Constants.paymentGatewayNetworkModuleNamed)
    ChopperClient chopperClient,
  ) =>
      ApiServicesPaymentGateway.create(chopperClient);
}
