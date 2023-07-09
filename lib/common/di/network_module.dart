import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
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
}
