// ignore_for_file: unused_result

import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/domain/usecases/delete_account_bank/delete_account_bank.dart';
import 'package:ika_smansara/domain/usecases/delete_account_bank/delete_account_bank_params.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/delete_account_bank_use_case_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_account_bank_provider.g.dart';

@riverpod
class DeleteAccountBankUser extends _$DeleteAccountBankUser {
  @override
  Future<UserAccountBankDocument?> build() async => null;

  Future<void> deleteAccountBankUser({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    DeleteAccountBank deleteAccountBank =
        ref.read(deleteAccountBankUseCaseProvider);

    var result = await deleteAccountBank(
      DeleteAccountBankParams(
        userAccountBankRequest: userAccountBankRequest,
      ),
    );

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
