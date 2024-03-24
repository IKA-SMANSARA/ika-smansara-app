import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/methods/bank_account_item.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

class BankAccountListPage extends ConsumerWidget {
  const BankAccountListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref.read(userDataProvider).valueOrNull?.authKey;
    var asyncAccountBankData = ref.watch(
      getAccountBankByUserIdProvider(
        userId: userId ?? '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Daftar Rekening Bank'),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {
          ref.read(routerProvider).pushNamed('create-bank-account-page');
        },
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: AutoSizeText(
          'Tambah Nomor Rekening',
        ),
      ),
      body: ListView(
        children: [
          ...(asyncAccountBankData.whenOrNull(
                data: (data) => data
                    .map(
                      (accountBank) => Slidable(
                        endActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Hapus',
                            ),
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Color(0xFF21B7CA),
                              foregroundColor: Colors.white,
                              icon: Icons.edit,
                              label: 'Ubah',
                            ),
                          ],
                        ),
                        child: bankAccountItem(
                          bankName: (accountBank.bankName ?? '').toUpperCase(),
                          accountBankNumber:
                              accountBank.bankAccountNumber ?? '',
                          realNameUserAccountBank:
                              (accountBank.realUserName ?? '').toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
                error: (error, stackTrace) => [
                  const Center(
                    child: Text(
                      'NETWORK ERROR!',
                    ),
                  ),
                ],
                loading: () => [
                  const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ],
              ) ??
              [
                Center(
                  child: AutoSizeText(
                    'Belum ada rekining yang ditambahkan',
                  ),
                ),
              ]),
          verticalSpace(100),
        ],
      ),
    );
  }
}
