import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/providers/account_bank/create_user_bank_account_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:uuid/uuid.dart';

class CreateAccountBankHandler {
  static Future<void> handleFormSubmission({
    required TextEditingController bankNameController,
    required TextEditingController bankAccountNumberController,
    required TextEditingController bankAccountNameController,
    required String selectedBankCode,
    required String selectedBankName,
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    final userAccountBankRequest = UserAccountBankRequest(
      bankAccountNumber: bankAccountNumberController.text,
      bankName: selectedBankName,
      bankCode: selectedBankCode,
      realUserName: bankAccountNameController.text,
      userId: ref.read(userDataProvider).valueOrNull?.authKey,
      userName: const Uuid()
          .v4()
          .toString()
          .replaceAll('-', '')
          .replaceAll(' ', ''),
      isDefault: false,
      email: ref.read(userDataProvider).valueOrNull?.email,
    );

    await ref
        .read(createUserBankAccountProvider.notifier)
        .postAccountBank(
          userAccountBankRequest: userAccountBankRequest,
        );
  }
}