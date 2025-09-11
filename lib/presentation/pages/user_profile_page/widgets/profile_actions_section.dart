import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/widgets/menu_item.dart';

class ProfileActionsSection extends ConsumerWidget {
  final UserProfileDocument userData;

  const ProfileActionsSection({
    super.key,
    required this.userData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aksi',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF104993),
              ),
        ),
        const SizedBox(height: 12),
        MenuItem(
          icon: Icon(Icons.edit, size: 20, color: const Color(0xFF104993)),
          title: 'Ubah Profile',
          subtitle: 'Perbarui informasi pribadi Anda',
          onTap: () => ref.read(routerProvider).pushNamed(
                'update-user-profile-page',
                extra: userData,
              ),
          showDivider: false,
        ),
      ],
    );
  }
}