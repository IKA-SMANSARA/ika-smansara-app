import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_profile_header.dart';
import 'package:ika_smansara/presentation/pages/user_profile_page/widgets/profile_actions_section.dart';
import 'package:ika_smansara/presentation/pages/user_profile_page/widgets/profile_info_section.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_error_widget.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'package:ika_smansara/utils/constants.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncUserData = ref.watch(userDataProvider);
    final devModeBox = Hive.box('dev mode');
    final isDevMode = devModeBox.get('isDevMode') ?? false;

    // Show error messages
    ref.listen(
      userDataProvider,
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
      ),
      body: SafeArea(
        child: asyncUserData.when(
          loading: () => const GlobalLoadingWidget(
            color: Color(0xFFD52014),
          ),
          error: (error, stack) => GlobalErrorWidget(
            onRetry: () => ref.invalidate(userDataProvider),
          ),
          data: (userData) {
            if (userData == null) {
              return const Center(
                child: Text('Silakan login untuk melihat profil Anda'),
              );
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Profile Header
                  UserProfileHeader(userData: userData),

                  const SizedBox(height: 20),

                  // Content with padding
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Information Section
                        ProfileInfoSection(userData: userData),

                        const SizedBox(height: 24),

                        // Profile Actions Section
                        ProfileActionsSection(userData: userData),

                        // Dev Mode Section (only for admins)
                        if (userData.isAdmin == true) ...[
                          const SizedBox(height: 24),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pengaturan Developer',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF104993),
                                    ),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF104993).withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Developer Mode',
                                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Switch.adaptive(
                                      value: isDevMode,
                                      activeColor: const Color(0xFFD52014),
                                      onChanged: (bool status) {
                                        devModeBox.put('isDevMode', status);
                                        Constants.logger.d(
                                          'DEVELOPER MODE STATUS ${devModeBox.get("isDevMode")}',
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
