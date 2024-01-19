import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class CardItemCampaign extends StatelessWidget {
  const CardItemCampaign({
    required this.onPress,
    required this.campaignTitle,
    required this.campaignDonationCollected,
    required this.campaignDuration,
    required this.campaignProgressIndicator,
    required this.campaignImage,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final String? campaignDuration;
  final String? campaignDonationCollected;
  final double? campaignProgressIndicator;
  final Widget? campaignImage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white12,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: campaignImage ?? const Placeholder(),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaignTitle ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Gap(8),
                      Text(
                        l10n.collectedTitle,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                      const Gap(4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            campaignDonationCollected ?? '',
                            style: GoogleFonts.inter(
                              color: Colors.blue,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            campaignDuration ?? '',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const Gap(4),
                      LinearProgressIndicator(
                        value: campaignProgressIndicator,
                      ),
                      const Gap(4),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
