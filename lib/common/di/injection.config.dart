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
    as _i39;
import 'package:ika_smansara/auth/domain/use_case/check_user_session_status_use_case/check_user_session_status_use_case.dart'
    as _i40;
import 'package:ika_smansara/auth/domain/use_case/get_id_email_session_from_local_use_case/get_id_email_session_from_local_use_case.dart'
    as _i16;
import 'package:ika_smansara/auth/domain/use_case/get_label_user_from_local_use_case/get_label_user_from_local_use_case.dart'
    as _i17;
import 'package:ika_smansara/auth/domain/use_case/get_user_account_detail_use_case/get_user_account_detail_use_case.dart'
    as _i18;
import 'package:ika_smansara/auth/domain/use_case/save_id_email_session_to_local_use_case/save_id_email_session_to_local_use_case.dart'
    as _i30;
import 'package:ika_smansara/auth/domain/use_case/save_label_user_to_local_use_case/save_label_user_to_local_use_case.dart'
    as _i31;
import 'package:ika_smansara/auth/domain/use_case/user_login_use_case/user_login_use_case.dart'
    as _i36;
import 'package:ika_smansara/auth/domain/use_case/user_logout_use_case/user_logout_use_case.dart'
    as _i37;
import 'package:ika_smansara/auth/domain/use_case/user_register_use_case/user_register_use_case.dart'
    as _i38;
import 'package:ika_smansara/common/common.dart' as _i4;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i48;
import 'package:ika_smansara/common/di/api_interface_payment_gateway_network_module.dart'
    as _i49;
import 'package:ika_smansara/common/di/network_module.dart' as _i46;
import 'package:ika_smansara/common/di/payment_gateway_network_module.dart'
    as _i47;
import 'package:ika_smansara/counter/counter.dart' as _i7;
import 'package:ika_smansara/counter/data/repository/counter_repository_impl.dart'
    as _i8;
import 'package:ika_smansara/counter/domain/use_case/get_counter_data_use_case/get_counter_data_use_case.dart'
    as _i13;
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart'
    as _i34;
import 'package:ika_smansara/detail_campaign/data/repository/detail_campaign_repository_impl.dart'
    as _i10;
import 'package:ika_smansara/detail_campaign/detail_campaign.dart' as _i9;
import 'package:ika_smansara/detail_campaign/domain/use_case/get_detail_campaign_use_case/get_detail_campaign_use_case.dart'
    as _i14;
import 'package:ika_smansara/detail_my_donation/data/repository/detail_my_donation_repository_impl.dart'
    as _i12;
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart'
    as _i11;
import 'package:ika_smansara/detail_my_donation/domain/use_case/get_detail_my_donation_use_case/get_detail_my_donation_use_case.dart'
    as _i15;
import 'package:ika_smansara/home/data/repository/home_repository_impl.dart'
    as _i20;
import 'package:ika_smansara/home/domain/use_case/get_all_campaigns_use_case/get_all_campaigns_use_case.dart'
    as _i42;
import 'package:ika_smansara/home/domain/use_case/get_carousel_use_case/get_carousel_use_case.dart'
    as _i43;
import 'package:ika_smansara/home/domain/use_case/get_categories_use_case/get_categories_use_case.dart'
    as _i44;
import 'package:ika_smansara/home/home.dart' as _i19;
import 'package:ika_smansara/list_campaign_per_category/data/repository/list_campaign_per_category_repository_impl.dart'
    as _i22;
import 'package:ika_smansara/list_campaign_per_category/domain/use_case/get_all_campaign_per_category_use_case/get_all_campaign_per_category_use_case.dart'
    as _i41;
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart'
    as _i21;
import 'package:ika_smansara/list_my_donation/data/repository/list_my_donation_repository_impl.dart'
    as _i24;
import 'package:ika_smansara/list_my_donation/domain/use_case/get_my_donations_use_case/get_my_donation_use_case.dart'
    as _i45;
import 'package:ika_smansara/list_my_donation/list_my_donation.dart' as _i23;
import 'package:ika_smansara/payment_gateway/data/repository/payment_gateway_repository_impl.dart'
    as _i26;
import 'package:ika_smansara/payment_gateway/domain/use_case/request_acquiring_transaction_token_use_case/request_acquiring_transaction_token_use_case.dart'
    as _i29;
import 'package:ika_smansara/payment_gateway/domain/use_case/save_transaction_use_case/save_transaction_use_case.dart'
    as _i32;
import 'package:ika_smansara/payment_gateway/domain/use_case/update_current_amount_and_backer_count_use_case/update_current_amount_and_backer_count_use_case.dart'
    as _i35;
import 'package:ika_smansara/payment_gateway/payment_gateway.dart' as _i25;
import 'package:ika_smansara/register/data/repository/register_repository_impl.dart'
    as _i28;
import 'package:ika_smansara/register/domain/use_case/save_user_profile_doc_use_case/save_user_profile_doc_use_case.dart'
    as _i33;
import 'package:ika_smansara/register/register.dart' as _i27;
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
    gh.factory<_i11.DetailMyDonationRepository>(
        () => _i12.DetailMyDonationRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i13.GetCounterDataUseCase>(
        () => _i13.GetCounterDataUseCase(gh<_i7.CounterRepository>()));
    gh.factory<_i14.GetDetailCampaignUseCase>(() =>
        _i14.GetDetailCampaignUseCase(gh<_i9.DetailCampaignRepository>()));
    gh.factory<_i15.GetDetailMyDonationUseCase>(() =>
        _i15.GetDetailMyDonationUseCase(gh<_i11.DetailMyDonationRepository>()));
    gh.factory<_i16.GetIdEmailSessionFromLocalUseCase>(
        () => _i16.GetIdEmailSessionFromLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i17.GetLabelUserFromLocalUseCase>(
        () => _i17.GetLabelUserFromLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i18.GetUserAccountDetailUseCase>(
        () => _i18.GetUserAccountDetailUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i19.HomeRepository>(
        () => _i20.HomeRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i21.ListCampaignPerCategoryRepository>(() =>
        _i22.ListCampaignPerCategoryRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i23.ListMyDonationRepository>(
        () => _i24.ListMyDonationRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i25.PaymentGatewayRepository>(
        () => _i26.PaymentGatewayRepositoryImpl(
              gh<_i4.ApiServicesPaymentGateway>(),
              gh<_i4.ApiServices>(),
            ));
    gh.factory<_i27.RegisterRepository>(
        () => _i28.RegisterRepositoryImpl(gh<_i4.ApiServices>()));
    gh.factory<_i29.RequestAcquiringTransactionTokenUseCase>(() =>
        _i29.RequestAcquiringTransactionTokenUseCase(
            gh<_i25.PaymentGatewayRepository>()));
    gh.factory<_i30.SaveIdEmailSessionToLocalUseCase>(
        () => _i30.SaveIdEmailSessionToLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i31.SaveLabelUserToLocalUseCase>(
        () => _i31.SaveLabelUserToLocalUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i32.SaveTransactionUseCase>(
        () => _i32.SaveTransactionUseCase(gh<_i25.PaymentGatewayRepository>()));
    gh.factory<_i33.SaveUserProfileDocUseCase>(
        () => _i33.SaveUserProfileDocUseCase(gh<_i27.RegisterRepository>()));
    gh.factory<_i34.UpdateCounterDataUseCase>(
        () => _i34.UpdateCounterDataUseCase(gh<_i7.CounterRepository>()));
    gh.factory<_i35.UpdateCurrentAmountAndBackerCountUseCase>(() =>
        _i35.UpdateCurrentAmountAndBackerCountUseCase(
            gh<_i25.PaymentGatewayRepository>()));
    gh.factory<_i36.UserLoginUseCase>(() => _i36.UserLoginUseCase(
          gh<_i5.AuthRepository>(),
          gh<_i5.SaveIdEmailSessionToLocalUseCase>(),
          gh<_i5.GetUserAccountDetailUseCase>(),
          gh<_i5.SaveLabelUserToLocalUseCase>(),
        ));
    gh.factory<_i37.UserLogoutUseCase>(() => _i37.UserLogoutUseCase(
          gh<_i5.AuthRepository>(),
          gh<_i5.GetIdEmailSessionFromLocalUseCase>(),
        ));
    gh.factory<_i38.UserRegisterUseCase>(
        () => _i38.UserRegisterUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i39.CheckUserIsAdminUseCase>(() =>
        _i39.CheckUserIsAdminUseCase(gh<_i5.GetLabelUserFromLocalUseCase>()));
    gh.factory<_i40.CheckUserSessionStatusUseCase>(
        () => _i40.CheckUserSessionStatusUseCase(
              gh<_i5.AuthRepository>(),
              gh<_i5.GetIdEmailSessionFromLocalUseCase>(),
            ));
    gh.factory<_i41.GetAllCampaignPerCategoryUseCase>(() =>
        _i41.GetAllCampaignPerCategoryUseCase(
            gh<_i21.ListCampaignPerCategoryRepository>()));
    gh.factory<_i42.GetAllCampaignsUseCase>(
        () => _i42.GetAllCampaignsUseCase(gh<_i19.HomeRepository>()));
    gh.factory<_i43.GetCarouselUseCase>(
        () => _i43.GetCarouselUseCase(gh<_i19.HomeRepository>()));
    gh.factory<_i44.GetCategoriesUseCase>(
        () => _i44.GetCategoriesUseCase(gh<_i19.HomeRepository>()));
    gh.factory<_i45.GetMyDonationUseCase>(
        () => _i45.GetMyDonationUseCase(gh<_i23.ListMyDonationRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i46.NetworkModule {}

class _$PaymentGatewayNetworkModule extends _i47.PaymentGatewayNetworkModule {}

class _$ApiInterfaceNetworkModule extends _i48.ApiInterfaceNetworkModule {}

class _$ApiInterfacePaymentGatewayNetworkModule
    extends _i49.ApiInterfacePaymentGatewayNetworkModule {}
