import 'package:appwrite/appwrite.dart';
import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/data/remote/api_services.dart';
import 'package:ika_smansara/common/data/remote/api_services_payment_gateway.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApplicationModule {
  // APPWRITE
  @lazySingleton
  Client get appwriteClient => Client()
      .setEndpoint(Constants.baseURL)
      .setProject(Constants.ikaSmansaraProjectId);

  @lazySingleton
  Databases get appwriteDatabase => Databases(appwriteClient);

  @lazySingleton
  Storage get appwriteStorage => Storage(appwriteClient);

  // network common module
  @Named(Constants.baseURLNamed)
  String get baseURL => Constants.baseURL;

  @lazySingleton
  ChopperClient chopperClient(@Named(Constants.baseURLNamed) String url) =>
      ChopperClient(
        baseUrl: Uri.parse(url),
        interceptors: [
          HttpLoggingInterceptor(),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
      );

  @lazySingleton
  ApiServices apiServices(ChopperClient chopperClient) =>
      ApiServices.create(chopperClient);

  // network payment gateway module
  @Named(Constants.paymentGatewayBaseURLNamed)
  String get paymentGatewayBaseURL => Constants.paymentGateWayURL;

  @lazySingleton
  @Named(Constants.paymentGatewayNetworkModuleNamed)
  ChopperClient paymentGatewayClient(
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

  @lazySingleton
  ApiServicesPaymentGateway apiServicesPaymentGateway(
    @Named(Constants.paymentGatewayNetworkModuleNamed)
    ChopperClient paymentGatewayClient,
  ) =>
      ApiServicesPaymentGateway.create(paymentGatewayClient);
}
