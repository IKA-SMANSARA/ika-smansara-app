import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/usecases/get_logged_in_user/get_logged_in_user.dart';
import 'package:ika_smansara/domain/usecases/login/login.dart';
import 'package:ika_smansara/domain/usecases/login/login_params.dart';
import 'package:ika_smansara/domain/usecases/register/register.dart';
import 'package:ika_smansara/domain/usecases/register/register_params.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_logged_in_user_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/login_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/logout_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/register_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_data_provider.g.dart';

@Riverpod(keepAlive: true)
class UserData extends _$UserData {
  @override
  Future<UserProfileDocument?> build() async {
    GetLoggedInUser getLoggedInUser = ref.read(getLoggedInUserProvider);
    var userResult = await getLoggedInUser(null);

    switch (userResult) {
      case Success(value: final user):
        _getCategories();
        _getCarouselImages();
        Constants.logger.d(user);
        return user;
      case Failed(message: _):
        return null;
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();

    Login login = ref.read(loginProvider);

    var loginResult = await login(
      LoginParams(
        email: email,
        password: password,
      ),
    );

    switch (loginResult) {
      case Success(value: final user):
        _getCategories();
        _getCarouselImages();
        state = AsyncData(user);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }

  Future<void> register({
    required name,
    required email,
    required address,
    required phone,
    isAlumni = false,
    graduateYear = '0',
    required password,
  }) async {
    state = const AsyncLoading();

    Register register = ref.read(registerProvider);

    var registerResult = await register(
      RegisterParams(
        name: name,
        email: email,
        address: address,
        phone: phone,
        password: password,
        graduateYear: graduateYear,
        isAlumni: isAlumni,
      ),
    );

    switch (registerResult) {
      case Success(value: final user):
        _getCategories();
        _getCarouselImages();
        state = AsyncData(user);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }

  Future<void> refreshUserData() async {
    GetLoggedInUser getLoggedInUser = ref.read(getLoggedInUserProvider);

    var result = await getLoggedInUser(null);

    if (result case Success(value: final user)) {
      state = AsyncData(user);
    }
  }

  Future<void> logout() async {
    var logout = ref.read(logoutProvider);
    var logoutResult = await logout(null);

    switch (logoutResult) {
      case Success(value: _):
        _getCategories();
        _getCarouselImages();
        state = const AsyncData(null);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = AsyncData(state.valueOrNull);
    }
  }

  void _getCategories() {
    ref.read(getListCategoryProvider.notifier).getListCategory();
  }

  void _getCarouselImages() {
    ref.read(getCarouselsProvider.notifier).getCarouselImagesData();
  }
}
