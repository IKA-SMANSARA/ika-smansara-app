// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:ika_smansara/auth/auth.dart' as _i12;
import 'package:ika_smansara/auth/data/repository/auth_repository_impl.dart'
    as _i13;
import 'package:ika_smansara/auth/domain/use_case/check_user_session_status_use_case/check_user_session_status_use_case.dart'
    as _i14;
import 'package:ika_smansara/auth/domain/use_case/save_id_email_session_to_local_use_case/save_id_email_session_to_local_use_case.dart'
    as _i20;
import 'package:ika_smansara/auth/domain/use_case/user_login_use_case/user_login_use_case.dart'
    as _i22;
import 'package:ika_smansara/common/common.dart' as _i10;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i24;
import 'package:ika_smansara/common/di/network_module.dart' as _i25;
import 'package:ika_smansara/counter/counter.dart' as _i15;
import 'package:ika_smansara/counter/data/repository/counter_repository_impl.dart'
    as _i16;
import 'package:ika_smansara/counter/domain/use_case/get_counter_data_use_case/get_counter_data_use_case.dart'
    as _i17;
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart'
    as _i21;
import 'package:ika_smansara/login/data/repository/login_repository_impl.dart'
    as _i4;
import 'package:ika_smansara/login/domain/use_case/delete_email_field_content_use_case/delete_email_field_content_use_case.dart'
    as _i8;
import 'package:ika_smansara/login/domain/use_case/delete_password_field_content_use_case/delete_password_field_content_use_case.dart'
    as _i9;
import 'package:ika_smansara/login/domain/use_case/save_email_field_content_use_case/save_email_field_content_use_case.dart'
    as _i5;
import 'package:ika_smansara/login/domain/use_case/save_password_field_content_use_case/save_password_field_content_use_case.dart'
    as _i6;
import 'package:ika_smansara/login/login.dart' as _i3;
import 'package:ika_smansara/payment_gateway/data/repository/payment_gateway_repository_impl.dart'
    as _i18;
import 'package:ika_smansara/payment_gateway/di/api_interface_payment_gateway_network_module.dart'
    as _i26;
import 'package:ika_smansara/payment_gateway/di/payment_gateway_network_module.dart'
    as _i27;
import 'package:ika_smansara/payment_gateway/domain/use_case/get_payment_method_use_case/get_payment_method_use_case.dart'
    as _i23;
import 'package:ika_smansara/payment_gateway/domain/use_case/request_transaction_use_case/request_transaction_use_case.dart'
    as _i19;
import 'package:ika_smansara/payment_gateway/payment_gateway.dart' as _i11;
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
    final paymentGatewayNetworkModule = _$PaymentGatewayNetworkModule();
    final apiInterfaceNetworkModule = _$ApiInterfaceNetworkModule();
    final apiInterfacePaymentGatewayNetworkModule =
        _$ApiInterfacePaymentGatewayNetworkModule();
    gh.factory<_i3.LoginRepository>(() => _i4.LoginRepositoryImpl());
    gh.factory<_i5.SaveEmailFieldContentUseCase>(
        () => _i5.SaveEmailFieldContentUseCase(gh<_i3.LoginRepository>()));
    gh.factory<_i6.SavePasswordFieldContentUseCase>(
        () => _i6.SavePasswordFieldContentUseCase(gh<_i3.LoginRepository>()));
    gh.factory<String>(
      () => networkModule.baseURL,
      instanceName: 'BASEURL',
    );
    gh.factory<String>(
      () => paymentGatewayNetworkModule.paymentGatewayBaseURL,
      instanceName: 'BASEURLPAYMENTGATEWAY',
    );
    gh.lazySingleton<_i7.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')));
    gh.lazySingleton<_i7.ChopperClient>(
      () => paymentGatewayNetworkModule
          .chopperClient(gh<String>(instanceName: 'BASEURLPAYMENTGATEWAY')),
      instanceName: 'PAYMENTGATEWAYNETWORKMODULE',
    );
    gh.factory<_i8.DeleteEmailFieldContentUseCase>(
        () => _i8.DeleteEmailFieldContentUseCase(gh<_i3.LoginRepository>()));
    gh.factory<_i9.DeletePasswordFieldContentUseCase>(
        () => _i9.DeletePasswordFieldContentUseCase(gh<_i3.LoginRepository>()));
    gh.lazySingleton<_i10.ApiServices>(
        () => apiInterfaceNetworkModule.apiServices(gh<_i7.ChopperClient>()));
    gh.lazySingleton<_i11.ApiServicesPaymentGateway>(() =>
        apiInterfacePaymentGatewayNetworkModule.apiServicesPaymentGateway(
            gh<_i7.ChopperClient>(
                instanceName: 'PAYMENTGATEWAYNETWORKMODULE')));
    gh.factory<_i12.AuthRepository>(
        () => _i13.AuthRepositoryImpl(gh<_i10.ApiServices>()));
    gh.factory<_i14.CheckUserSessionStatusUseCase>(
        () => _i14.CheckUserSessionStatusUseCase(gh<_i12.AuthRepository>()));
    gh.factory<_i15.CounterRepository>(
        () => _i16.CounterRepositoryImpl(gh<_i10.ApiServices>()));
    gh.factory<_i17.GetCounterDataUseCase>(
        () => _i17.GetCounterDataUseCase(gh<_i15.CounterRepository>()));
    gh.factory<_i11.PaymentGatewayRepository>(() =>
        _i18.PaymentGatewayRepositoryImpl(
            gh<_i11.ApiServicesPaymentGateway>()));
    gh.factory<_i19.RequestTransactionUseCase>(() =>
        _i19.RequestTransactionUseCase(gh<_i11.PaymentGatewayRepository>()));
    gh.factory<_i20.SaveIdEmailSessionToLocalUseCase>(
        () => _i20.SaveIdEmailSessionToLocalUseCase(gh<_i12.AuthRepository>()));
    gh.factory<_i21.UpdateCounterDataUseCase>(
        () => _i21.UpdateCounterDataUseCase(gh<_i15.CounterRepository>()));
    gh.factory<_i22.UserLoginUseCase>(() => _i22.UserLoginUseCase(
          gh<_i12.AuthRepository>(),
          gh<_i12.SaveIdEmailSessionToLocalUseCase>(),
        ));
    gh.factory<_i23.GetPaymentMethodUseCase>(() =>
        _i23.GetPaymentMethodUseCase(gh<_i11.PaymentGatewayRepository>()));
    return this;
  }
}

class _$ApiInterfaceNetworkModule extends _i24.ApiInterfaceNetworkModule {}

class _$NetworkModule extends _i25.NetworkModule {}

class _$ApiInterfacePaymentGatewayNetworkModule
    extends _i26.ApiInterfacePaymentGatewayNetworkModule {}

class _$PaymentGatewayNetworkModule extends _i27.PaymentGatewayNetworkModule {}
