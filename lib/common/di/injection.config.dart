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
import 'package:ika_smansara/auth/auth.dart' as _i6;
import 'package:ika_smansara/auth/data/repository/auth_repository_impl.dart'
    as _i7;
import 'package:ika_smansara/auth/domain/use_case/check_user_is_admin_use_case/check_user_is_admin_use_case.dart'
    as _i27;
import 'package:ika_smansara/auth/domain/use_case/check_user_session_status_use_case/check_user_session_status_use_case.dart'
    as _i28;
import 'package:ika_smansara/auth/domain/use_case/get_id_email_session_from_local_use_case/get_id_email_session_from_local_use_case.dart'
    as _i11;
import 'package:ika_smansara/auth/domain/use_case/get_label_user_from_local_use_case/get_label_user_from_local_use_case.dart'
    as _i12;
import 'package:ika_smansara/auth/domain/use_case/get_user_account_detail_use_case/get_user_account_detail_use_case.dart'
    as _i13;
import 'package:ika_smansara/auth/domain/use_case/save_id_email_session_to_local_use_case/save_id_email_session_to_local_use_case.dart'
    as _i20;
import 'package:ika_smansara/auth/domain/use_case/save_label_user_to_local_use_case/save_label_user_to_local_use_case.dart'
    as _i21;
import 'package:ika_smansara/auth/domain/use_case/user_login_use_case/user_login_use_case.dart'
    as _i24;
import 'package:ika_smansara/auth/domain/use_case/user_logout_use_case/user_logout_use_case.dart'
    as _i25;
import 'package:ika_smansara/auth/domain/use_case/user_register_use_case/user_register_use_case.dart'
    as _i26;
import 'package:ika_smansara/common/common.dart' as _i4;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i29;
import 'package:ika_smansara/common/di/network_module.dart' as _i30;
import 'package:ika_smansara/counter/counter.dart' as _i8;
import 'package:ika_smansara/counter/data/repository/counter_repository_impl.dart'
    as _i9;
import 'package:ika_smansara/counter/domain/use_case/get_counter_data_use_case/get_counter_data_use_case.dart'
    as _i10;
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart'
    as _i23;
import 'package:ika_smansara/home/data/repository/home_repository_impl.dart'
    as _i15;
import 'package:ika_smansara/home/home.dart' as _i14;
import 'package:ika_smansara/payment_gateway/data/repository/payment_gateway_repository_impl.dart'
    as _i16;
import 'package:ika_smansara/payment_gateway/di/api_interface_payment_gateway_network_module.dart'
    as _i31;
import 'package:ika_smansara/payment_gateway/di/payment_gateway_network_module.dart'
    as _i32;
import 'package:ika_smansara/payment_gateway/domain/use_case/request_acquiring_transaction_token_use_case/request_acquiring_transaction_token_use_case.dart'
    as _i19;
import 'package:ika_smansara/payment_gateway/payment_gateway.dart' as _i5;
import 'package:ika_smansara/register/data/repository/register_repository_impl.dart'
    as _i18;
import 'package:ika_smansara/register/domain/use_case/save_user_profile_doc_use_case/save_user_profile_doc_use_case.dart'
    as _i22;
import 'package:ika_smansara/register/register.dart' as _i17;
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
    gh.factory<String>(
      () => networkModule.baseURL,
      instanceName: 'BASEURL',
    );
    gh.factory<String>(
      () => paymentGatewayNetworkModule.paymentGatewayBaseURL,
      instanceName: 'BASEURLPAYMENTGATEWAY',
    );
    gh.lazySingleton<_i3.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')));
    gh.lazySingleton<_i3.ChopperClient>(
      () => paymentGatewayNetworkModule
          .chopperClient(gh<String>(instanceName: 'BASEURLPAYMENTGATEWAY')),
      instanceName: 'PAYMENTGATEWAYNETWORKMODULE',
    );
    gh.lazySingleton<_i4.ApiServices>(
        () => apiInterfaceNetworkModule.apiServices(gh<_i3.ChopperClient>()));
    gh.lazySingleton<_i5.ApiServicesPaymentGateway>(() =>
        apiInterfacePaymentGatewayNetworkModule.apiServicesPaymentGateway(
            gh<_i3.ChopperClient>(
                instanceName: 'PAYMENTGATEWAYNETWORKMODULE')));
    gh.factory<_i6.AuthRepository>(
        () => _i7.AuthRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i8.CounterRepository>(
        () => _i9.CounterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i10.GetCounterDataUseCase>(
        () => _i10.GetCounterDataUseCase(gh<_i8.CounterRepository>()));
    gh.factory<_i11.GetIdEmailSessionFromLocalUseCase>(
        () => _i11.GetIdEmailSessionFromLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i12.GetLabelUserFromLocalUseCase>(
        () => _i12.GetLabelUserFromLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i13.GetUserAccountDetailUseCase>(
        () => _i13.GetUserAccountDetailUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i14.HomeRepository>(
        () => _i15.HomeRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i5.PaymentGatewayRepository>(() =>
        _i16.PaymentGatewayRepositoryImpl(gh<_i5.ApiServicesPaymentGateway>()));
    gh.factory<_i17.RegisterRepository>(
        () => _i18.RegisterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i19.RequestAcquiringTransactionTokenUseCase>(() =>
        _i19.RequestAcquiringTransactionTokenUseCase(
            gh<_i5.PaymentGatewayRepository>()));
    gh.factory<_i20.SaveIdEmailSessionToLocalUseCase>(
        () => _i20.SaveIdEmailSessionToLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i21.SaveLabelUserToLocalUseCase>(
        () => _i21.SaveLabelUserToLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i22.SaveUserProfileDocUseCase>(
        () => _i22.SaveUserProfileDocUseCase(gh<_i17.RegisterRepository>()));
    gh.factory<_i23.UpdateCounterDataUseCase>(
        () => _i23.UpdateCounterDataUseCase(gh<_i8.CounterRepository>()));
    gh.factory<_i24.UserLoginUseCase>(() => _i24.UserLoginUseCase(
          gh<_i6.AuthRepository>(),
          gh<_i6.SaveIdEmailSessionToLocalUseCase>(),
          gh<_i6.GetUserAccountDetailUseCase>(),
          gh<_i6.SaveLabelUserToLocalUseCase>(),
        ));
    gh.factory<_i25.UserLogoutUseCase>(() => _i25.UserLogoutUseCase(
          gh<_i6.AuthRepository>(),
          gh<_i6.GetIdEmailSessionFromLocalUseCase>(),
        ));
    gh.factory<_i26.UserRegisterUseCase>(
        () => _i26.UserRegisterUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i27.CheckUserIsAdminUseCase>(() =>
        _i27.CheckUserIsAdminUseCase(gh<_i6.GetLabelUserFromLocalUseCase>()));
    gh.factory<_i28.CheckUserSessionStatusUseCase>(
        () => _i28.CheckUserSessionStatusUseCase(
              gh<_i6.AuthRepository>(),
              gh<_i6.GetIdEmailSessionFromLocalUseCase>(),
            ));
    return this;
  }
}

class _$ApiInterfaceNetworkModule extends _i29.ApiInterfaceNetworkModule {}

class _$NetworkModule extends _i30.NetworkModule {}

class _$ApiInterfacePaymentGatewayNetworkModule
    extends _i31.ApiInterfacePaymentGatewayNetworkModule {}

class _$PaymentGatewayNetworkModule extends _i32.PaymentGatewayNetworkModule {}
