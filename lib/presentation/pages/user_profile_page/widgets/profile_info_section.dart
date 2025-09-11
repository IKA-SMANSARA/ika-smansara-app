import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/presentation/widgets/menu_item.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class ProfileInfoSection extends StatelessWidget {
  final UserProfileDocument userData;

  const ProfileInfoSection({
    super.key,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Informasi Pribadi',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF104993),
              ),
        ),
        const SizedBox(height: 12),
        MenuItem(
          icon: Icon(Icons.email, size: 20, color: const Color(0xFF104993)),
          title: 'Email',
          subtitle: userData.email ?? 'Tidak ada email',
          onTap: () {},
          showDivider: true,
        ),
        if (userData.phone != null && userData.phone!.isNotEmpty)
          MenuItem(
            icon: Icon(Icons.phone, size: 20, color: const Color(0xFF104993)),
            title: 'Telepon',
            subtitle: userData.phone!,
            onTap: () {},
            showDivider: true,
          ),
        if (userData.address != null && userData.address!.isNotEmpty)
          MenuItem(
            icon: Icon(Icons.location_on, size: 20, color: const Color(0xFF104993)),
            title: 'Alamat',
            subtitle: userData.address!,
            onTap: () {},
            showDivider: true,
          ),
        if (userData.isAlumni == true)
          MenuItem(
            icon: Assets.images.graduationCap.svg(width: 20, height: 20),
            title: 'Alumni Tahun',
            subtitle: userData.graduateYear ?? 'Tahun tidak diketahui',
            onTap: () {},
            showDivider: false,
          ),
      ],
    );
  }
}