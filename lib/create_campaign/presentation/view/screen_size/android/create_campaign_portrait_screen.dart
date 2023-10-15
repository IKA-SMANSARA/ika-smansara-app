import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/create_campaign/create_campaign.dart';

class CreateCampaignPortraitScreen extends StatelessWidget {
  const CreateCampaignPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          'Buat Galang Dana',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: const CreateCampaignForm(),
    );
  }
}
