import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class CampaignInfoSection extends StatelessWidget {
  final CampaignDocument campaign;

  const CampaignInfoSection({required this.campaign, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Campaign Title
        Text(
          (campaign.campaignName ?? '').toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        const SizedBox(height: 16),

        // Progress Section
        const Text(
          'Terkumpul',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    (campaign.currentAmount ?? 0).toIDRCurrencyFormat(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF104993),
                    ),
                    softWrap: true,
                  ),
                  const Text(
                    ' dari ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    (campaign.goalAmount ?? 0).toIDRCurrencyFormat(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Text(
                getRemainingDays(dateEndCampaign: campaign.dateEndCampaign),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
                softWrap: true,
                maxLines: 2,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Progress Bar
        LinearProgressIndicator(
          backgroundColor: Colors.grey.shade200,
          color: const Color(0xFF104993),
          value: getCampaignProgressIndicatorValue(
            campaign.goalAmount ?? 0,
            campaign.currentAmount ?? 0,
          ),
        ),

        const SizedBox(height: 12),

        // Backer Count
        Row(
          children: [
            const Icon(
              Icons.people,
              color: Colors.black54,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(
              '${campaign.backerCount ?? 0}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const Text(
              ' orang telah berdonasi',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}