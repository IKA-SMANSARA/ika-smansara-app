import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class CreateCampaignButton extends StatelessWidget {
  const CreateCampaignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD52014),
        minimumSize: const Size(288, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onPressed: () => context.pushNamed(Routes.createCampaign),
      child: Text(
        'Buat Galang Dana',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
