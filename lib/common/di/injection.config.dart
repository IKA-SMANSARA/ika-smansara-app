// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
// ignore: depend_on_referenced_packages
import 'package:get_it/get_it.dart' as _i1;
import 'package:ika_smansara/common/di/network_module.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh
      ..factory<String>(
        () => networkModule.baseURL,
        instanceName: 'BASEURL',
      )
      ..lazySingleton<_i3.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')),
      );
    return this;
  }
}

class _$NetworkModule extends _i4.NetworkModule {}
