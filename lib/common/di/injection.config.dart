// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:appwrite/appwrite.dart' as _i3;
import 'package:chopper/chopper.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:ika_smansara/auth/auth.dart' as _i6;
import 'package:ika_smansara/auth/data/repository/auth_repository_impl.dart'
    as _i7;
import 'package:ika_smansara/auth/domain/use_case/check_user_is_admin_use_case/check_user_is_admin_use_case.dart'
    as _i37;
import 'package:ika_smansara/auth/domain/use_case/check_user_session_status_use_case/check_user_session_status_use_case.dart'
    as _i38;
import 'package:ika_smansara/auth/domain/use_case/get_id_email_session_from_local_use_case/get_id_email_session_from_local_use_case.dart'
    as _i14;
import 'package:ika_smansara/auth/domain/use_case/get_label_user_from_local_use_case/get_label_user_from_local_use_case.dart'
    as _i15;
import 'package:ika_smansara/auth/domain/use_case/get_user_account_detail_use_case/get_user_account_detail_use_case.dart'
    as _i17;
import 'package:ika_smansara/auth/domain/use_case/save_id_email_session_to_local_use_case/save_id_email_session_to_local_use_case.dart'
    as _i29;
import 'package:ika_smansara/auth/domain/use_case/save_label_user_to_local_use_case/save_label_user_to_local_use_case.dart'
    as _i30;
import 'package:ika_smansara/auth/domain/use_case/user_login_use_case/user_login_use_case.dart'
    as _i34;
import 'package:ika_smansara/auth/domain/use_case/user_logout_use_case/user_logout_use_case.dart'
    as _i35;
import 'package:ika_smansara/auth/domain/use_case/user_register_use_case/user_register_use_case.dart'
    as _i36;
import 'package:ika_smansara/common/common.dart' as _i5;
import 'package:ika_smansara/common/di/api_interface_network_module.dart'
    as _i47;
import 'package:ika_smansara/common/di/api_interface_payment_gateway_network_module.dart'
    as _i48;
import 'package:ika_smansara/common/di/appwrite_module.dart' as _i44;
import 'package:ika_smansara/common/di/network_module.dart' as _i46;
import 'package:ika_smansara/common/di/payment_gateway_network_module.dart'
    as _i45;
import 'package:ika_smansara/detail_campaign/data/repository/detail_campaign_repository_impl.dart'
    as _i9;
import 'package:ika_smansara/detail_campaign/detail_campaign.dart' as _i8;
import 'package:ika_smansara/detail_campaign/domain/use_case/get_detail_campaign_use_case/get_detail_campaign_use_case.dart'
    as _i12;
import 'package:ika_smansara/detail_campaign/domain/use_case/get_list_backer_use_case/get_list_backer_use_case.dart'
    as _i16;
import 'package:ika_smansara/detail_my_donation/data/repository/detail_my_donation_repository_impl.dart'
    as _i11;
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart'
    as _i10;
import 'package:ika_smansara/detail_my_donation/domain/use_case/get_detail_my_donation_use_case/get_detail_my_donation_use_case.dart'
    as _i13;
import 'package:ika_smansara/home/data/repository/home_repository_impl.dart'
    as _i19;
import 'package:ika_smansara/home/domain/use_case/get_all_campaigns_use_case/get_all_campaigns_use_case.dart'
    as _i40;
import 'package:ika_smansara/home/domain/use_case/get_carousel_use_case/get_carousel_use_case.dart'
    as _i41;
import 'package:ika_smansara/home/domain/use_case/get_categories_use_case/get_categories_use_case.dart'
    as _i42;
import 'package:ika_smansara/home/home.dart' as _i18;
import 'package:ika_smansara/list_campaign_per_category/data/repository/list_campaign_per_category_repository_impl.dart'
    as _i21;
import 'package:ika_smansara/list_campaign_per_category/domain/use_case/get_all_campaign_per_category_use_case/get_all_campaign_per_category_use_case.dart'
    as _i39;
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart'
    as _i20;
import 'package:ika_smansara/list_my_donation/data/repository/list_my_donation_repository_impl.dart'
    as _i23;
import 'package:ika_smansara/list_my_donation/domain/use_case/get_my_donations_use_case/get_my_donation_use_case.dart'
    as _i43;
import 'package:ika_smansara/list_my_donation/list_my_donation.dart' as _i22;
import 'package:ika_smansara/payment_gateway/data/repository/payment_gateway_repository_impl.dart'
    as _i25;
import 'package:ika_smansara/payment_gateway/domain/use_case/request_acquiring_transaction_token_use_case/request_acquiring_transaction_token_use_case.dart'
    as _i28;
import 'package:ika_smansara/payment_gateway/domain/use_case/save_transaction_use_case/save_transaction_use_case.dart'
    as _i31;
import 'package:ika_smansara/payment_gateway/domain/use_case/update_current_amount_and_backer_count_use_case/update_current_amount_and_backer_count_use_case.dart'
    as _i33;
import 'package:ika_smansara/payment_gateway/payment_gateway.dart' as _i24;
import 'package:ika_smansara/register/data/repository/register_repository_impl.dart'
    as _i27;
import 'package:ika_smansara/register/domain/use_case/save_user_profile_doc_use_case/save_user_profile_doc_use_case.dart'
    as _i32;
import 'package:ika_smansara/register/register.dart' as _i26;
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
    final appwriteModule = _$AppwriteModule();
    final paymentGatewayNetworkModule = _$PaymentGatewayNetworkModule();
    final networkModule = _$NetworkModule();
    final apiInterfaceNetworkModule = _$ApiInterfaceNetworkModule();
    final apiInterfacePaymentGatewayNetworkModule =
        _$ApiInterfacePaymentGatewayNetworkModule();
    gh.lazySingleton<_i3.Client>(() => appwriteModule.appwriteClient());
    gh.factory<String>(
      () => paymentGatewayNetworkModule.paymentGatewayBaseURL,
      instanceName: 'BASEURLPAYMENTGATEWAY',
    );
    gh.factory<String>(
      () => networkModule.baseURL,
      instanceName: 'BASEURL',
    );
    gh.lazySingleton<_i4.ChopperClient>(
        () => networkModule.chopperClient(gh<String>(instanceName: 'BASEURL')));
    gh.lazySingleton<_i4.ChopperClient>(
      () => paymentGatewayNetworkModule
          .chopperClient(gh<String>(instanceName: 'BASEURLPAYMENTGATEWAY')),
      instanceName: 'PAYMENTGATEWAYNETWORKMODULE',
    );
    gh.lazySingleton<_i5.ApiServices>(
        () => apiInterfaceNetworkModule.apiServices(gh<_i4.ChopperClient>()));
    gh.lazySingleton<_i5.ApiServicesPaymentGateway>(() =>
        apiInterfacePaymentGatewayNetworkModule.apiServicesPaymentGateway(
            gh<_i4.ChopperClient>(
                instanceName: 'PAYMENTGATEWAYNETWORKMODULE')));
    gh.factory<_i6.AuthRepository>(
        () => _i7.AuthRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i8.DetailCampaignRepository>(
        () => _i9.DetailCampaignRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i10.DetailMyDonationRepository>(
        () => _i11.DetailMyDonationRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i12.GetDetailCampaignUseCase>(() =>
        _i12.GetDetailCampaignUseCase(gh<_i8.DetailCampaignRepository>()));
    gh.factory<_i13.GetDetailMyDonationUseCase>(() =>
        _i13.GetDetailMyDonationUseCase(gh<_i10.DetailMyDonationRepository>()));
    gh.factory<_i14.GetIdEmailSessionFromLocalUseCase>(
        () => _i14.GetIdEmailSessionFromLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i15.GetLabelUserFromLocalUseCase>(
        () => _i15.GetLabelUserFromLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i16.GetListBackerUseCase>(
        () => _i16.GetListBackerUseCase(gh<_i8.DetailCampaignRepository>()));
    gh.factory<_i17.GetUserAccountDetailUseCase>(
        () => _i17.GetUserAccountDetailUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i18.HomeRepository>(
        () => _i19.HomeRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i20.ListCampaignPerCategoryRepository>(() =>
        _i21.ListCampaignPerCategoryRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i22.ListMyDonationRepository>(
        () => _i23.ListMyDonationRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i24.PaymentGatewayRepository>(
        () => _i25.PaymentGatewayRepositoryImpl(
              gh<_i5.ApiServicesPaymentGateway>(),
              gh<_i5.ApiServices>(),
            ));
    gh.factory<_i26.RegisterRepository>(
        () => _i27.RegisterRepositoryImpl(gh<_i5.ApiServices>()));
    gh.factory<_i28.RequestAcquiringTransactionTokenUseCase>(() =>
        _i28.RequestAcquiringTransactionTokenUseCase(
            gh<_i24.PaymentGatewayRepository>()));
    gh.factory<_i29.SaveIdEmailSessionToLocalUseCase>(
        () => _i29.SaveIdEmailSessionToLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i30.SaveLabelUserToLocalUseCase>(
        () => _i30.SaveLabelUserToLocalUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i31.SaveTransactionUseCase>(
        () => _i31.SaveTransactionUseCase(gh<_i24.PaymentGatewayRepository>()));
    gh.factory<_i32.SaveUserProfileDocUseCase>(
        () => _i32.SaveUserProfileDocUseCase(gh<_i26.RegisterRepository>()));
    gh.factory<_i33.UpdateCurrentAmountAndBackerCountUseCase>(() =>
        _i33.UpdateCurrentAmountAndBackerCountUseCase(
            gh<_i24.PaymentGatewayRepository>()));
    gh.factory<_i34.UserLoginUseCase>(() => _i34.UserLoginUseCase(
          gh<_i6.AuthRepository>(),
          gh<_i6.SaveIdEmailSessionToLocalUseCase>(),
          gh<_i6.GetUserAccountDetailUseCase>(),
          gh<_i6.SaveLabelUserToLocalUseCase>(),
        ));
    gh.factory<_i35.UserLogoutUseCase>(() => _i35.UserLogoutUseCase(
          gh<_i6.AuthRepository>(),
          gh<_i6.GetIdEmailSessionFromLocalUseCase>(),
        ));
    gh.factory<_i36.UserRegisterUseCase>(
        () => _i36.UserRegisterUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i37.CheckUserIsAdminUseCase>(() =>
        _i37.CheckUserIsAdminUseCase(gh<_i6.GetLabelUserFromLocalUseCase>()));
    gh.factory<_i38.CheckUserSessionStatusUseCase>(
        () => _i38.CheckUserSessionStatusUseCase(
              gh<_i6.AuthRepository>(),
              gh<_i6.GetIdEmailSessionFromLocalUseCase>(),
            ));
    gh.factory<_i39.GetAllCampaignPerCategoryUseCase>(() =>
        _i39.GetAllCampaignPerCategoryUseCase(
            gh<_i20.ListCampaignPerCategoryRepository>()));
    gh.factory<_i40.GetAllCampaignsUseCase>(
        () => _i40.GetAllCampaignsUseCase(gh<_i18.HomeRepository>()));
    gh.factory<_i41.GetCarouselUseCase>(
        () => _i41.GetCarouselUseCase(gh<_i18.HomeRepository>()));
    gh.factory<_i42.GetCategoriesUseCase>(
        () => _i42.GetCategoriesUseCase(gh<_i18.HomeRepository>()));
    gh.factory<_i43.GetMyDonationUseCase>(
        () => _i43.GetMyDonationUseCase(gh<_i22.ListMyDonationRepository>()));
    return this;
  }
}

class _$AppwriteModule extends _i44.AppwriteModule {}

class _$PaymentGatewayNetworkModule extends _i45.PaymentGatewayNetworkModule {}

class _$NetworkModule extends _i46.NetworkModule {}

class _$ApiInterfaceNetworkModule extends _i47.ApiInterfaceNetworkModule {}

class _$ApiInterfacePaymentGatewayNetworkModule
    extends _i48.ApiInterfacePaymentGatewayNetworkModule {}
