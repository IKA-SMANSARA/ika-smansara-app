import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class HorizontalCampaignCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String imageUrl;
  final String campaignName;
  final String dateEndCampaign;
  final int campaignGoalAmount;
  final int campaignCurrentAmount;
  final double? cardWidth;

  const HorizontalCampaignCard({
    super.key,
    this.onTap,
    required this.imageUrl,
    required this.campaignName,
    required this.dateEndCampaign,
    required this.campaignGoalAmount,
    required this.campaignCurrentAmount,
    this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            verticalSpace(8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 10,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const LinearProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  horizontalSpace(8),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) + 24,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          campaignName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpace(16),
                        AutoSizeText(
                          'Terkumpul',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              campaignCurrentAmount.toIDRCurrencyFormat(),
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            AutoSizeText(
                              getRemainingDays(
                                dateEndCampaign: dateEndCampaign,
                              ),
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(4),
                        LinearProgressIndicator(
                          backgroundColor: Colors.grey.shade200,
                          color: const Color(0xFF104993),
                          value: getCampaignProgressIndicatorValue(
                            campaignGoalAmount,
                            campaignCurrentAmount,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                color: Colors.grey,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
