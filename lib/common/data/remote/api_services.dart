import 'package:chopper/chopper.dart';

part 'api_services.chopper.dart';

@ChopperApi()
abstract class ApiServices extends ChopperService {
  static ApiServices create([ChopperClient? client]) => _$ApiServices(client);
}
