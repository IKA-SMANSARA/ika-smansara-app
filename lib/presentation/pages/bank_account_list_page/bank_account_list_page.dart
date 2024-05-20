import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/methods/bank_account_item.dart';
import 'package:ika_smansara/presentation/providers/account_bank/delete_account_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BankAccountListPage extends ConsumerStatefulWidget {
  const BankAccountListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BankAccountListPageState();
}

class _BankAccountListPageState extends ConsumerState<BankAccountListPage> {
  @override
  Widget build(BuildContext context) {
    var userId = ref.read(userDataProvider).valueOrNull?.authKey;
    var asyncAccountBankData = ref.watch(
      getAccountBankByUserIdProvider(
        userId: userId ?? '',
      ),
    );

    // list account bank state error
    ref.listen(
      getAccountBankByUserIdProvider(
        userId: userId ?? '',
      ),
      (_, state) => state.showSnackbarOnError(
        context,
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
                              onPressed: (context) {
                                _showDeleteDialog(context, accountBank, ref);
                              },
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Hapus',
                            ),
                            SlidableAction(
                              onPressed: (context) {
                                ref.read(routerProvider).pushNamed(
                                      'update-account-bank-page',
                                      extra: accountBank,
                                    );
                              },
                              backgroundColor: Color(0xFF21B7CA),
                              foregroundColor: Colors.white,
                              icon: Icons.edit,
                              label: 'Ubah',
                            ),
                          ],
                        ),
                        child: bankAccountItem(
                          bankCode:
                              'Bank ${accountBank.bankCode?.toUpperCase()}',
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: LoadingAnimationWidget.inkDrop(
                        color: Colors.amber,
                        size: 35,
                      ),
                    ),
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

  void _showDeleteDialog(
    BuildContext context,
    UserAccountBankDocument accountBank,
    WidgetRef ref,
  ) {
    showAdaptiveDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          title: Text('Konfirmasi'),
          content: Text(
            'Anda yakin akan menghapus informasi rekening bank ini ?',
          ),
          actions: [
            TextButton(
              child: const Text('Tidak'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Ya'),
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
                    .read(
                      deleteAccountBankUserProvider.notifier,
                    )
                    .deleteAccountBankUser(
                      userAccountBankRequest: userAccountBankRequest,
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
