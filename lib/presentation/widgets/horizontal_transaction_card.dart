import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class HorizontalTransactionCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String imageUrl;
  final String campaignName;
  final String currentUpdate;
  final int amount;
  final double? cardWidth;
  final String paymentStatus;

  const HorizontalTransactionCard({
    super.key,
    this.onTap,
    required this.imageUrl,
    required this.campaignName,
    required this.currentUpdate,
    this.cardWidth,
    required this.amount,
    required this.paymentStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  height: MediaQuery.of(context).size.height / 8,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: AutoSizeText(
                              campaignName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:
                                  paymentStatusBackgroundColor(paymentStatus),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(50, 50)),
                            ),
                            height: 20,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Center(
                              child: AutoSizeText(
                                paymentStatus.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            countDays(currentUpdate),
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          AutoSizeText(
                            amount.toIDRCurrencyFormat(),
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
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
    ).onClick(
      () => onTap,
    );
  }
}
