// ignore_for_file: unused_result

import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/domain/usecases/update_account_bank/update_account_bank.dart';
import 'package:ika_smansara/domain/usecases/update_account_bank/update_account_bank_params.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/update_account_bank_use_case_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_account_bank_provider.g.dart';

@riverpod
class UpdateUserAccountBank extends _$UpdateUserAccountBank {
  @override
  Future<UserAccountBankDocument?> build() async => null;

  Future<void> postUpdateAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    state = AsyncValue.loading();

    UpdateAccountBank updateAccountBank =
        ref.read(updateAccountBankUseCaseProvider);

    var result = await updateAccountBank(
      UpdateAccountBankParams(
        userAccountBankRequest: userAccountBankRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        var userId = ref.read(userDataProvider).valueOrNull?.authKey;
        ref.refresh(
          getAccountBankByUserIdProvider(
            userId: userId ?? '',
          ),
        );
        ref.read(routerProvider).pop();
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
