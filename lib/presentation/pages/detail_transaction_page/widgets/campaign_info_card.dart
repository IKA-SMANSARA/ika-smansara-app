import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CampaignInfoCard extends ConsumerWidget {
  final String campaignName;
  final String campaignImage;
  final CampaignDocument? campaign;

  const CampaignInfoCard({
    super.key,
    required this.campaignName,
    required this.campaignImage,
    this.campaign,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: campaign != null ? () {
        ref.read(routerProvider).pushNamed(
          'campaign-detail-page',
          extra: campaign,
        );
      } : null,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Program Donasi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const Spacer(),
                if (campaign != null)
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey.shade400,
                  ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                // Campaign Image
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade100,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: campaignImage.isNotEmpty
                        ? CachedNetworkImage(
                            imageUrl: campaignImage,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.amber,
                              size: 20,
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.image_not_supported,
                              color: Colors.grey,
                            ),
                          )
                        : const Icon(
                            Icons.image_not_supported,
                            color: Colors.grey,
                          ),
                  ),
                ),

                const SizedBox(width: 12),

                // Campaign Name
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaignName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (campaign != null)
                        const SizedBox(height: 4),
                      if (campaign != null)
                        Text(
                          'Ketuk untuk melihat detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}