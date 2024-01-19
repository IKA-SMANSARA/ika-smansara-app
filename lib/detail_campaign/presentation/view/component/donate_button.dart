import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({
    required this.campaignStatus,
    required this.documentId,
    required this.campaignName,
    required this.campaignImage,
    super.key,
  });

  final bool campaignStatus;
  final String documentId;
  final String campaignName;
  final String campaignImage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF104993),
        minimumSize: const Size(350, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onPressed: !campaignStatus
          ? null
          : () => context.pushNamed(
                Routes.paymentGateway,
                queryParameters: {
                  Constants.idCampaignKey: documentId,
                  Constants.nameCampaignKey: campaignName,
                  Constants.imageCampaignKey: campaignImage,
                },
              ),
      child: Text(
        'Kirim Donasi',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
