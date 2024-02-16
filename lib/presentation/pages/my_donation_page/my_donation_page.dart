import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/carousel_transaction_image.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/list_transactions.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transactions_list_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

class MyDonationPage extends ConsumerWidget {
  const MyDonationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref.read(userDataProvider).valueOrNull?.authKey;
    var asyncTransactionsData =
        ref.watch(getTransactionsListProvider(userId: userId ?? ''));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xFF104993),
        title: Center(
          child: AutoSizeText(
            'Donasiku',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          carouselTransactionImage(
            context: context,
            campaigns: asyncTransactionsData,
          ),
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Riwayat Donasi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(16),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
              ],
            ),
          ),
          verticalSpace(16),
          ...listTransactions(
            transactions: asyncTransactionsData,
            onTap: (transaction) {
              ref.read(routerProvider).pushNamed(
                    'detail-transaction-page',
                    extra: transaction.id,
                  );
            },
          ),
          verticalSpace(100),
        ],
      ),
    );
  }
}
