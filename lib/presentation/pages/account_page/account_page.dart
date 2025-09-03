import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/admin_account_view.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_account_view.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncUserData = ref.watch(userDataProvider);

    // Show error messages
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      body: SafeArea(
        child: asyncUserData.when(
          loading: () => Center(
            child: LoadingAnimationWidget.inkDrop(
              color: const Color(0xFFD52014),
              size: 50,
            ),
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
                child: Text('Silakan login untuk melihat akun Anda'),
              );
            }

            final isAdmin = userData.isAdmin ?? false;

            return isAdmin
                ? AdminAccountView(userData: userData)
                : UserAccountView(userData: userData);
          },
        ),
      ),
    );
  }
}
