import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/methods/bank_account_item.dart';

class BankAccountDetailPage extends ConsumerWidget {
  final UserAccountBankDocument userAccountBankDocument;
  const BankAccountDetailPage({
    required this.userAccountBankDocument,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Detail Account Bank',
        ),
      ),
      body: ListView(
        children: [
          bankAccountItem(
            bankName: (userAccountBankDocument.bankName ?? '').toUpperCase(),
            accountBankNumber: userAccountBankDocument.bankAccountNumber ?? '',
            realNameUserAccountBank:
                (userAccountBankDocument.realUserName ?? '').toUpperCase(),
          )
        ],
      ),
    );
  }
}
