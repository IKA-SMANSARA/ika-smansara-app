import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_profile_header.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

class UserAccountView extends ConsumerWidget {
  final UserProfileDocument userData;

  const UserAccountView({
    super.key,
    required this.userData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                // Quick Actions Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aktivitas',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                    ),
                    const SizedBox(height: 12),
                    _buildActivityCard(
                      context,
                      icon: Assets.images.gift.svg(width: 24, height: 24),
                      title: 'Donasi Saya',
                      subtitle: 'Lihat riwayat donasi',
                      color: const Color(0xFFD52014),
                      onTap: () => ref
                          .read(routerProvider)
                          .pushNamed('my_donation_page'),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Account Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Akun',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                    ),
                    const SizedBox(height: 12),
                    _buildMenuItem(
                      context,
                      icon: Assets.images.person.svg(width: 20, height: 20),
                      title: 'Ubah Profile',
                      subtitle: 'Perbarui informasi pribadi',
                      onTap: () => ref
                          .read(routerProvider)
                          .pushNamed('user-profile-page'),
                    ),
                    _buildMenuItem(
                      context,
                      icon: Assets.images.about.svg(width: 20, height: 20),
                      title: 'Tentang IKA SMANSARA',
                      subtitle: 'Informasi tentang organisasi',
                      onTap: () {},
                    ),
                    _buildMenuItem(
                      context,
                      icon: Assets.images.person.svg(width: 20, height: 20),
                      title: 'Hubungi Kami',
                      subtitle: 'Ada pertanyaan? Hubungi tim kami',
                      onTap: () =>
                          ref.read(routerProvider).pushNamed('contact-us-page'),
                    ),
                    _buildMenuItem(
                      context,
                      icon: Assets.images.logout.svg(width: 20, height: 20),
                      title: 'Keluar',
                      subtitle: 'Keluar dari akun',
                      onTap: () => ref.read(userDataProvider.notifier).logout(),
                      showDivider: false,
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(
    BuildContext context, {
    required Widget icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: icon,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required Widget icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool showDivider = true,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF104993).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: icon,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        if (showDivider) ...[
          const SizedBox(height: 12),
          Divider(
            color: Colors.grey[300],
            height: 1,
          ),
        ],
      ],
    );
  }
}

