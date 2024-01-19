import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemCampaign extends StatelessWidget {
  const CardItemCampaign({
    required this.onPress,
    required this.campaignTitle,
    required this.campaignImage,
    required this.donationAmount,
    required this.donationDuration,
    required this.campaignProgressIndicator,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final Widget? campaignImage;
  final String? donationAmount;
  final String? donationDuration;
  final double? campaignProgressIndicator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 100,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: campaignImage ?? const Placeholder(),
                      ),
                    ),
                  ),
                  const Gap(8),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          campaignTitle ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Terkumpul',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Gap(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  donationAmount ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF104993),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  donationDuration ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            LinearProgressIndicator(
                              value: campaignProgressIndicator,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                color: Colors.blueGrey.withAlpha(150),
                thickness: 0.5,
                height: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
