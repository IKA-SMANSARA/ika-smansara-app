import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_carousel.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_empty.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_header.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_list.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/widgets/my_donation_stats.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_transactions_list_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MyDonationPage extends ConsumerWidget {
  const MyDonationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDataAsync = ref.watch(userDataProvider);
    final userId = userDataAsync.valueOrNull?.authKey ?? '';
    final transactionsAsync =
        ref.watch(getTransactionsListProvider(userId: userId));

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
      appBar: AppBar(
        title: const Text('Donasiku'),
        elevation: 0,
      ),
      body: SafeArea(
        child: userDataAsync.when(
          loading: () => const GlobalLoadingWidget(
            color: Color(0xFFD52014),
          ),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Colors.grey,
                ),
                const SizedBox(height: 16),
                Text(
                  'Terjadi kesalahan saat memuat data',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.invalidate(userDataProvider),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD52014),
                  ),
                  child: const Text('Coba Lagi'),
                ),
              ],
            ),
          ),
          data: (userData) {
            if (userData == null) {
              return const Center(
                child: Text('Silakan login untuk melihat riwayat donasi'),
              );
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  const MyDonationHeader(),

                  // Stats Section (only show if there are transactions)
                  MyDonationStats(transactions: transactionsAsync),

                  // Content based on transaction state
                  transactionsAsync.when(
                    loading: () => Container(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: LoadingAnimationWidget.inkDrop(
                          color: const Color(0xFFD52014),
                          size: 40,
                        ),
                      ),
                    ),
                    error: (error, stack) => Container(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              size: 48,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Gagal memuat riwayat donasi',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () => ref.invalidate(
                                  getTransactionsListProvider(userId: userId)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFD52014),
                              ),
                              child: const Text('Coba Lagi'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    data: (transactions) {
                      if (transactions.isEmpty) {
                        return const MyDonationEmpty();
                      }

                      return Column(
                        children: [
                          // Carousel Section
                          MyDonationCarousel(transactions: transactionsAsync),

                          // Transaction List Section
                          MyDonationList(transactions: transactionsAsync),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

