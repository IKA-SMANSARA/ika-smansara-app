// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:ika_smansara/auth/auth.dart' as _i5;
import 'package:ika_smansara/auth/data/repository/auth_repository_impl.dart'
    as _i6;
import 'package:ika_smansara/auth/domain/use_case/check_user_is_admin_use_case/check_user_is_admin_use_case.dart'
    as _i36;
import 'package:ika_smansara/auth/domain/use_case/check_user_session_status_use_case/check_user_session_status_use_case.dart'
    as _i37;
import 'package:ika_smansara/auth/domain/use_case/get_id_email_session_from_local_use_case/get_id_email_session_from_local_use_case.dart'
    as _i13;
import 'package:ika_smansara/auth/domain/use_case/get_label_user_from_local_use_case/get_label_user_from_local_use_case.dart'
    as _i14;
import 'package:ika_smansara/auth/domain/use_case/get_user_account_detail_use_case/get_user_account_detail_use_case.dart'
    as _i15;
import 'package:ika_smansara/auth/domain/use_case/save_id_email_session_to_local_use_case/save_id_email_session_to_local_use_case.dart'
    as _i27;
import 'package:ika_smansara/auth/domain/use_case/save_label_user_to_local_use_case/save_label_user_to_local_use_case.dart'
    as _i28;
import 'package:ika_smansara/auth/domain/use_case/user_login_use_case/user_login_use_case.dart'
    as _i33;
import 'package:ika_smansara/auth/domain/use_case/user_logout_use_case/user_logout_use_case.dart'
    as _i34;
import 'package:ika_smansara/auth/domain/use_case/user_register_use_case/user_register_use_case.dart'
    as _i35;
import 'package:ika_smansara/common/common.dart' as _i4;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i45;
import 'package:ika_smansara/common/di/api_interface_payment_gateway_network_module.dart'
    as _i46;
import 'package:ika_smansara/common/di/network_module.dart' as _i43;
import 'package:ika_smansara/common/di/payment_gateway_network_module.dart'
    as _i44;
import 'package:ika_smansara/counter/counter.dart' as _i7;
import 'package:ika_smansara/counter/data/repository/counter_repository_impl.dart'
    as _i8;
import 'package:ika_smansara/counter/domain/use_case/get_counter_data_use_case/get_counter_data_use_case.dart'
    as _i11;
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart'
    as _i31;
import 'package:ika_smansara/detail_campaign/data/repository/detail_campaign_repository_impl.dart'
    as _i10;
import 'package:ika_smansara/detail_campaign/detail_campaign.dart' as _i9;
import 'package:ika_smansara/detail_campaign/domain/use_case/get_detail_campaign_use_case/get_detail_campaign_use_case.dart'
    as _i12;
import 'package:ika_smansara/home/data/repository/home_repository_impl.dart'
    as _i17;
import 'package:ika_smansara/home/domain/use_case/get_all_campaigns_use_case/get_all_campaigns_use_case.dart'
    as _i39;
import 'package:ika_smansara/home/domain/use_case/get_carousel_use_case/get_carousel_use_case.dart'
    as _i40;
import 'package:ika_smansara/home/domain/use_case/get_categories_use_case/get_categories_use_case.dart'
    as _i41;
import 'package:ika_smansara/home/home.dart' as _i16;
import 'package:ika_smansara/list_campaign_per_category/data/repository/list_campaign_per_category_repository_impl.dart'
    as _i19;
import 'package:ika_smansara/list_campaign_per_category/domain/use_case/get_all_campaign_per_category_use_case/get_all_campaign_per_category_use_case.dart'
    as _i38;
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart'
    as _i18;
import 'package:ika_smansara/list_my_donation/data/repository/list_my_donation_repository_impl.dart'
    as _i21;
import 'package:ika_smansara/list_my_donation/domain/use_case/get_my_donations_use_case/get_my_donation_use_case.dart'
    as _i42;
import 'package:ika_smansara/list_my_donation/list_my_donation.dart' as _i20;
import 'package:ika_smansara/payment_gateway/data/repository/payment_gateway_repository_impl.dart'
    as _i23;
import 'package:ika_smansara/payment_gateway/domain/use_case/request_acquiring_transaction_token_use_case/request_acquiring_transaction_token_use_case.dart'
    as _i26;
import 'package:ika_smansara/payment_gateway/domain/use_case/save_transaction_use_case/save_transaction_use_case.dart'
    as _i29;
import 'package:ika_smansara/payment_gateway/domain/use_case/update_current_amount_and_backer_count_use_case/update_current_amount_and_backer_count_use_case.dart'
    as _i32;
import 'package:ika_smansara/payment_gateway/payment_gateway.dart' as _i22;
import 'package:ika_smansara/register/data/repository/register_repository_impl.dart'
    as _i25;
import 'package:ika_smansara/register/domain/use_case/save_user_profile_doc_use_case/save_user_profile_doc_use_case.dart'
    as _i30;
import 'package:ika_smansara/register/register.dart' as _i24;
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
    final paymentGatewayNetworkModule = _$PaymentGatewayNetworkModule();
    final networkModule = _$NetworkModule();
    final apiInterfaceNetworkModule = _$ApiInterfaceNetworkModule();
    final apiInterfacePaymentGatewayNetworkModule =
        _$ApiInterfacePaymentGatewayNetworkModule();
    gh.factory<String>(
      () => paymentGatewayNetworkModule.paymentGatewayBaseURL,
      instanceName: 'BASEURLPAYMENTGATEWAY',
    );
    gh.factory<String>(
      () => networkModule.baseURL,
      instanceName: 'BASEURL',
    );
    gh.lazySingleton<_i3.ChopperClient>(
      () => paymentGatewayNetworkModule
          .chopperClient(gh<String>(instanceName: 'BASEURLPAYMENTGATEWAY')),
      instanceName: 'PAYMENTGATEWAYNETWORKMODULE',
    );
    gh.lazySingleton<_i3.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')));
    gh.lazySingleton<_i4.ApiServices>(
        () => apiInterfaceNetworkModule.apiServices(gh<_i3.ChopperClient>()));
    gh.lazySingleton<_i4.ApiServicesPaymentGateway>(() =>
        apiInterfacePaymentGatewayNetworkModule.apiServicesPaymentGateway(
            gh<_i3.ChopperClient>(
                instanceName: 'PAYMENTGATEWAYNETWORKMODULE')));
    gh.factory<_i5.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i7.CounterRepository>(
        () => _i8.CounterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i9.DetailCampaignRepository>(
        () => _i10.DetailCampaignRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i11.GetCounterDataUseCase>(
        () => _i11.GetCounterDataUseCase(gh<_i7.CounterRepository>()));
    gh.factory<_i12.GetDetailCampaignUseCase>(() =>
        _i12.GetDetailCampaignUseCase(gh<_i9.DetailCampaignRepository>()));
    gh.factory<_i13.GetIdEmailSessionFromLocalUseCase>(
        () => _i13.GetIdEmailSessionFromLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i14.GetLabelUserFromLocalUseCase>(
        () => _i14.GetLabelUserFromLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i15.GetUserAccountDetailUseCase>(
        () => _i15.GetUserAccountDetailUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i16.HomeRepository>(
        () => _i17.HomeRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i18.ListCampaignPerCategoryRepository>(() =>
        _i19.ListCampaignPerCategoryRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i20.ListMyDonationRepository>(
        () => _i21.ListMyDonationRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i22.PaymentGatewayRepository>(
        () => _i23.PaymentGatewayRepositoryImpl(
              gh<_i4.ApiServicesPaymentGateway>(),
              gh<_i4.ApiServices>(),
            ));
    gh.factory<_i24.RegisterRepository>(
        () => _i25.RegisterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i26.RequestAcquiringTransactionTokenUseCase>(() =>
        _i26.RequestAcquiringTransactionTokenUseCase(
            gh<_i22.PaymentGatewayRepository>()));
    gh.factory<_i27.SaveIdEmailSessionToLocalUseCase>(
        () => _i27.SaveIdEmailSessionToLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i28.SaveLabelUserToLocalUseCase>(
        () => _i28.SaveLabelUserToLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i29.SaveTransactionUseCase>(
        () => _i29.SaveTransactionUseCase(gh<_i22.PaymentGatewayRepository>()));
    gh.factory<_i30.SaveUserProfileDocUseCase>(
        () => _i30.SaveUserProfileDocUseCase(gh<_i24.RegisterRepository>()));
    gh.factory<_i31.UpdateCounterDataUseCase>(
        () => _i31.UpdateCounterDataUseCase(gh<_i7.CounterRepository>()));
    gh.factory<_i32.UpdateCurrentAmountAndBackerCountUseCase>(() =>
        _i32.UpdateCurrentAmountAndBackerCountUseCase(
            gh<_i22.PaymentGatewayRepository>()));
    gh.factory<_i33.UserLoginUseCase>(() => _i33.UserLoginUseCase(
          gh<_i5.AuthRepository>(),
          gh<_i5.SaveIdEmailSessionToLocalUseCase>(),
          gh<_i5.GetUserAccountDetailUseCase>(),
          gh<_i5.SaveLabelUserToLocalUseCase>(),
        ));
    gh.factory<_i34.UserLogoutUseCase>(() => _i34.UserLogoutUseCase(
          gh<_i5.AuthRepository>(),
          gh<_i5.GetIdEmailSessionFromLocalUseCase>(),
        ));
    gh.factory<_i35.UserRegisterUseCase>(
        () => _i35.UserRegisterUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i36.CheckUserIsAdminUseCase>(() =>
        _i36.CheckUserIsAdminUseCase(gh<_i5.GetLabelUserFromLocalUseCase>()));
    gh.factory<_i37.CheckUserSessionStatusUseCase>(
        () => _i37.CheckUserSessionStatusUseCase(
              gh<_i5.AuthRepository>(),
              gh<_i5.GetIdEmailSessionFromLocalUseCase>(),
            ));
    gh.factory<_i38.GetAllCampaignPerCategoryUseCase>(() =>
        _i38.GetAllCampaignPerCategoryUseCase(
            gh<_i18.ListCampaignPerCategoryRepository>()));
    gh.factory<_i39.GetAllCampaignsUseCase>(
        () => _i39.GetAllCampaignsUseCase(gh<_i16.HomeRepository>()));
    gh.factory<_i40.GetCarouselUseCase>(
        () => _i40.GetCarouselUseCase(gh<_i16.HomeRepository>()));
    gh.factory<_i41.GetCategoriesUseCase>(
        () => _i41.GetCategoriesUseCase(gh<_i16.HomeRepository>()));
    gh.factory<_i42.GetMyDonationUseCase>(
        () => _i42.GetMyDonationUseCase(gh<_i20.ListMyDonationRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i43.NetworkModule {}

class _$PaymentGatewayNetworkModule extends _i44.PaymentGatewayNetworkModule {}

class _$ApiInterfaceNetworkModule extends _i45.ApiInterfaceNetworkModule {}

class _$ApiInterfacePaymentGatewayNetworkModule
    extends _i46.ApiInterfacePaymentGatewayNetworkModule {}
