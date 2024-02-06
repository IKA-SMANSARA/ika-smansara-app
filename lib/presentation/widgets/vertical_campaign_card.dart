import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class VerticalCampaignCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String imageUrl;
  final String campaignName;
  final String dateEndCampaign;
  final int campaignGoalAmount;
  final int campaignCurrentAmount;
  final double? width;

  const VerticalCampaignCard({
    super.key,
    this.onTap,
    required this.imageUrl,
    required this.campaignName,
    required this.dateEndCampaign,
    required this.campaignGoalAmount,
    required this.campaignCurrentAmount,
    this.width = 300,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white12,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: responsiveAspectRatio(context),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const LinearProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              width: width,
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
                      AutoSizeText(
                        campaignName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(8),
                      AutoSizeText(
                        'Donasi Terkumpul',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      verticalSpace(4),
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
                      SizedBox(
                        width: width,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey.shade200,
                          color: const Color(0xFF104993),
                          value: getCampaignProgressIndicatorValue(
                            campaignGoalAmount,
                            campaignCurrentAmount,
                          ),
                        ),
                      ),
                      verticalSpace(4),
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
