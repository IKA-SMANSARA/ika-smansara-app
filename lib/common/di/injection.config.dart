// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:ika_smansara/common/common.dart' as _i4;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i9;
import 'package:ika_smansara/common/di/network_module.dart' as _i10;
import 'package:ika_smansara/counter/counter.dart' as _i5;
import 'package:ika_smansara/counter/data/repository/counter_repository_impl.dart'
    as _i6;
import 'package:ika_smansara/counter/domain/use_case/get_counter_data_use_case/get_counter_data_use_case.dart'
    as _i7;
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart'
    as _i8;
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
    final apiInterfaceNetworkModule = _$ApiInterfaceNetworkModule();
    gh.factory<String>(
      () => networkModule.baseURL,
      instanceName: 'BASEURL',
    );
    gh.lazySingleton<_i3.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')));
    gh.lazySingleton<_i4.ApiServices>(
        () => apiInterfaceNetworkModule.getCounter(gh<_i3.ChopperClient>()));
    gh.factory<_i5.CounterRepository>(
        () => _i6.CounterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i7.GetCounterDataUseCase>(
        () => _i7.GetCounterDataUseCase(gh<_i5.CounterRepository>()));
    gh.factory<_i8.UpdateCounterDataUseCase>(
        () => _i8.UpdateCounterDataUseCase(gh<_i5.CounterRepository>()));
    return this;
  }
}

class _$ApiInterfaceNetworkModule extends _i9.ApiInterfaceNetworkModule {}

class _$NetworkModule extends _i10.NetworkModule {}
