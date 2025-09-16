import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_profile_header.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/activity_card.dart';
import 'package:ika_smansara/presentation/widgets/menu_item.dart';

class UserAccountView extends ConsumerWidget {
  final UserProfileDocument userData;
  final VoidCallback? onShowTutorial;

  const UserAccountView({
    super.key,
    required this.userData,
    this.onShowTutorial,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
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
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF104993),
                                ),
                      ),
                      const SizedBox(height: 12),
                      ActivityCard(
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
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF104993),
                                ),
                      ),
                      const SizedBox(height: 12),
                      MenuItem(
                        icon: Assets.images.person.svg(width: 20, height: 20),
                        title: 'Ubah Profile',
                        subtitle: 'Perbarui informasi pribadi',
                        onTap: () => ref
                            .read(routerProvider)
                            .pushNamed('user-profile-page'),
                      ),
                      MenuItem(
                        icon: Icon(Icons.play_circle_outline,
                            size: 20, color: const Color(0xFF104993)),
                        title: 'Tutorial Penggunaan',
                        subtitle: 'Pelajari cara menggunakan aplikasi',
                        onTap: onShowTutorial ?? () {},
                      ),
                      MenuItem(
                        icon: Assets.images.about.svg(width: 20, height: 20),
                        title: 'Tentang IKA SMANSARA',
                        subtitle: 'Informasi tentang organisasi',
                        onTap: () {},
                      ),
                      MenuItem(
                        icon: Assets.images.person.svg(width: 20, height: 20),
                        title: 'Hubungi Kami',
                        subtitle: 'Ada pertanyaan? Hubungi tim kami',
                        onTap: () => ref
                            .read(routerProvider)
                            .pushNamed('contact-us-page'),
                      ),
                      MenuItem(
                        icon: Assets.images.logout.svg(width: 20, height: 20),
                        title: 'Keluar',
                        subtitle: 'Keluar dari akun',
                        onTap: () =>
                            ref.read(userDataProvider.notifier).logout(),
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
      ),
    );
  }
}
