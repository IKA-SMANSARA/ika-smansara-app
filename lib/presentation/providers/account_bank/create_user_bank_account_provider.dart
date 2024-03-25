import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank.dart';
import 'package:ika_smansara/domain/usecases/create_account_bank/create_account_bank_params.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_account_bank_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_user_bank_account_provider.g.dart';

@riverpod
class CreateUserBankAccount extends _$CreateUserBankAccount {
  @override
  Future<UserAccountBankDocument?> build() async => null;

  Future<void> postAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    CreateAccountBank createAccountBank = ref.read(
      createAccountBankUseCaseProvider,
    );

    var result = await createAccountBank(
      CreateAccountBankParams(
        userAccountBankRequest: userAccountBankRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        // ignore: unused_result
        ref.refresh(getListBankDocProvider);
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
