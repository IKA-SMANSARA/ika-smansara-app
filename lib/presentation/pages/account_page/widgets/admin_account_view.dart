import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_profile_header.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/activity_card.dart';

class AdminAccountView extends ConsumerWidget {
  final UserProfileDocument userData;

  const AdminAccountView({
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
                        'Aksi Cepat',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF104993),
                            ),
                      ),
                      const SizedBox(height: 12),
                ActivityCard(
                  icon: Assets.images.gift.svg(width: 24, height: 24),
                  title: 'Buat Galang Dana',
                  subtitle: 'Mulai penggalangan dana baru',
                  color: const Color(0xFFD52014),
                  onTap: () => ref.read(routerProvider).pushNamed('create_campaign'),
                ),
                const SizedBox(height: 8),
                ActivityCard(
                  icon: Assets.images.money.svg(width: 24, height: 24),
                  title: 'Kelola Pencairan',
                  subtitle: 'Pantau dan kelola pencairan dana',
                  color: const Color(0xFF104993),
                  onTap: () => ref.read(routerProvider).pushNamed('payout-history-page'),
                ),
                const SizedBox(height: 8),
                ActivityCard(
                  icon: Assets.images.gift.svg(width: 24, height: 24),
                  title: 'Donasi Saya',
                  subtitle: 'Lihat riwayat donasi',
                  color: const Color(0xFFD52014),
                  onTap: () => ref.read(routerProvider).pushNamed('my_donation_page'),
                ),
              ],
            ),

                  const SizedBox(height: 24),

                  // Management Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manajemen',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF104993),
                            ),
                      ),
                      const SizedBox(height: 12),
                _buildMenuItem(
                  context,
                  icon: Assets.images.gift.svg(width: 20, height: 20),
                  title: 'Penggalangan Dana Saya',
                  subtitle: 'Kelola kampanye yang telah dibuat',
                  onTap: () => ref.read(routerProvider).pushNamed(
                        'my-campaigns-list-page',
                        extra: ref.read(userDataProvider).valueOrNull?.authKey,
                      ),
                ),
                _buildMenuItem(
                  context,
                  icon: Assets.images.money.svg(width: 20, height: 20),
                  title: 'Riwayat Pencairan Dana',
                  subtitle: 'Lihat semua riwayat pencairan',
                  onTap: () => ref.read(routerProvider).pushNamed('payout-history-page'),
                ),
                _buildMenuItem(
                  context,
                  icon: Assets.images.creditCard.svg(width: 20, height: 20),
                  title: 'Data Rekening',
                  subtitle: 'Kelola informasi rekening bank',
                  onTap: () => ref.read(routerProvider).pushNamed('bank-account-list-page'),
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
                  onTap: () => ref.read(routerProvider).pushNamed('user-profile-page'),
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