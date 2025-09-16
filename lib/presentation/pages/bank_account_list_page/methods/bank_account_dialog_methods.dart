import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/providers/account_bank/delete_account_bank_provider.dart';

void showDeleteBankAccountDialog(
  BuildContext context,
  UserAccountBankDocument accountBank,
  WidgetRef ref,
) {
  showAdaptiveDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog.adaptive(
        title: Text(
          'Konfirmasi Hapus',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        content: Text(
          'Anda yakin akan menghapus rekening bank ${accountBank.bankCode?.toUpperCase()} dengan nomor ${accountBank.bankAccountNumber}?',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          TextButton(
            child: Text(
              'Batal',
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: Text(
              'Hapus',
              style: TextStyle(
                color: const Color(0xFFD52014),
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              var userAccountBankRequest = UserAccountBankRequest(
                id: accountBank.id,
                bankAccountNumber: accountBank.bankAccountNumber,
                bankName: accountBank.bankName,
                bankCode: accountBank.bankCode,
                realUserName: accountBank.realUserName,
                userId: accountBank.userId,
                userName: accountBank.userName,
                isDefault: false,
                isDeleted: true,
              );

              ref
                  .read(deleteAccountBankUserProvider.notifier)
                  .deleteAccountBankUser(
                    userAccountBankRequest: userAccountBankRequest,
                  );

              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}