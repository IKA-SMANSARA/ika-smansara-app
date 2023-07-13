import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@module
abstract class PaymentGatewayNetworkModule {
  @Named(Constants.paymentGatewayBaseURLNamed)
  String get paymentGatewayBaseURL => Constants.paymentGateWayURLSandbox;

  @lazySingleton
  @Named(Constants.paymentGatewayNetworkModuleNamed)
  ChopperClient chopperClient(
    @Named(Constants.paymentGatewayBaseURLNamed) String url,
  ) =>
      ChopperClient(
        baseUrl: Uri.parse(url),
        interceptors: [
          HttpLoggingInterceptor(),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
      );
}
