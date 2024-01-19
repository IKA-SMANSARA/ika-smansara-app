import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemDonationHistory extends StatelessWidget {
  const CardItemDonationHistory({
    required this.onPress,
    required this.campaignTitle,
    required this.createdDonationAt,
    required this.donationAmount,
    required this.campaignImage,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final String? createdDonationAt;
  final String? donationAmount;
  final Widget? campaignImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 90,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  createdDonationAt ?? '',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '$donationAmount',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF104993),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
