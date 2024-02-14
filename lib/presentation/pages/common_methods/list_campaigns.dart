import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_campaign_card.dart';

List<Widget> listCampaigns({
  required AsyncValue<List<CampaignDocument>> campaigns,
  void Function(CampaignDocument campaign)? onTap,
}) =>
    (campaigns.whenOrNull(
          data: (data) => data
              .map(
                (campaign) => HorizontalCampaignCard(
                  onTap: () => onTap?.call(campaign),
                  imageUrl: campaign.photoThumbnail ?? '',
                  campaignName: campaign.campaignName ?? '',
                  dateEndCampaign: campaign.dateEndCampaign ?? '',
                  campaignGoalAmount: campaign.goalAmount ?? 0,
                  campaignCurrentAmount: campaign.currentAmount ?? 0,
                  cardWidth: double.infinity,
                ),
              )
              .toList(),
          error: (error, stackTrace) => [
            const Center(
              child: Text(
                'NETWORK ERROR!',
              ),
            ),
          ],
          loading: () => [
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ) ??
        []);
