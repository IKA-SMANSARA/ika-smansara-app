import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/methods/bank_account_dialog_methods.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/widgets/bank_account_card.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/widgets/empty_bank_account_state.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_error_widget.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'package:ika_smansara/presentation/widgets/global_primary_button.dart';
import 'package:ika_smansara/presentation/widgets/global_section_header.dart';

class BankAccountListPage extends ConsumerWidget {
  const BankAccountListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.read(userDataProvider).valueOrNull?.authKey;

    if (userId == null) {
      return const Scaffold(
        body: Center(
          child: Text('User not authenticated'),
        ),
      );
    }

    final asyncAccountBankData = ref.watch(
      getAccountBankByUserIdProvider(userId: userId),
    );

    // Listen for errors
    ref.listen(
      getAccountBankByUserIdProvider(userId: userId),
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF104993),
                Color(0xFF1a5fb4),
              ],
            ),
          ),
        ),
        foregroundColor: Colors.white,
        elevation: 0,
        title: AutoSizeText(
          'Daftar Rekening Bank',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 20),
        child: GlobalPrimaryButton(
          text: 'Tambah Rekening',
          onPressed: () =>
              ref.read(routerProvider).pushNamed('create-bank-account-page'),
          width: null,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 24),
        ),
      ),
      body: SafeArea(
        child: asyncAccountBankData.when(
          data: (data) {
            if (false || data.isEmpty) {
              return const EmptyBankAccountState();
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section Header
                  GlobalSectionHeader(
                    title: 'Rekening Bank Anda',
                    titleStyle:
                        Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF104993),
                            ),
                  ),

                  // Bank Account List
                  ...data.map(
                    (accountBank) => BankAccountCard(
                      accountBank: accountBank,
                      onEdit: () => ref.read(routerProvider).pushNamed(
                            'update-account-bank-page',
                            extra: accountBank,
                          ),
                      onDelete: () => showDeleteBankAccountDialog(
                        context,
                        accountBank,
                        ref,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            );
          },
          error: (error, stackTrace) => GlobalErrorWidget(
            message: 'Gagal memuat data rekening bank',
            onRetry: () => ref.invalidate(getAccountBankByUserIdProvider),
          ),
          loading: () => const GlobalLoadingWidget(
            color: Color(0xFFD52014),
          ),
        ),
      ),
    );
  }
}
