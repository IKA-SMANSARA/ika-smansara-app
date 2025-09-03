import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_content.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_empty_state.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_error_state.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_page_header.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_loading_state.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transactions_list_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

class MyDonationPage extends ConsumerWidget {
  const MyDonationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDataAsync = ref.watch(userDataProvider);
    final userId = userDataAsync.valueOrNull?.authKey ?? '';
    final transactionsAsync = ref.watch(getTransactionsListProvider(userId: userId));

    // Show error messages for failed operations
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    ref.listen(
      getTransactionsListProvider(userId: userId),
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const MyDonationPageHeader(),

              // Content Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: userDataAsync.when(
                  loading: () => const MyDonationLoadingState(),
                  error: (error, stack) => MyDonationErrorState(error: error),
                  data: (userData) {
                    if (userData == null) {
                      return const Center(
                        child: Text('Silakan login untuk melihat riwayat donasi'),
                      );
                    }

                    return transactionsAsync.when(
                      loading: () => const MyDonationLoadingState(),
                      error: (error, stack) => MyDonationErrorState(error: error),
                      data: (transactions) {
                        if (transactions.isEmpty) {
                          return const MyDonationEmptyState();
                        }

                        return MyDonationContent(transactions: transactionsAsync);
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}