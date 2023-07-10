import 'package:chopper/chopper.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiInterfaceNetworkModule {
  @lazySingleton
  ApiServices getCounter(ChopperClient chopperClient) =>
      ApiServices.create(chopperClient);
}
