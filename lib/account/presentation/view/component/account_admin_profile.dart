import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class AccountAdminProfile extends StatelessWidget {
  const AccountAdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: CircleAvatar(
                minRadius: 10,
                maxRadius: 50,
                backgroundImage: Assets.images.donate.provider(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Nama Pengguna',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Admin',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
