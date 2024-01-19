import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class DonaturListHeader extends StatelessWidget {
  const DonaturListHeader({
    required this.backerCount,
    required this.documentId,
    super.key,
  });

  final int backerCount;
  final String documentId;

  @override
  Widget build(BuildContext context) {
    if (backerCount != 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Donatur ',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' ($backerCount)',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => context.pushNamed(
              Routes.listBacker,
              queryParameters: {
                Constants.backerCountKey: '$backerCount',
                Constants.idCampaignKey: documentId,
              },
            ),
            child: Text(
              'Lihat semua',
              style: GoogleFonts.inter(
                color: const Color(0xFF104993),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
