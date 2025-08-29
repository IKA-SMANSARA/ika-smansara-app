import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_campaign_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

List<Widget> listCampaigns({
  required AsyncValue<List<CampaignDocument>> campaigns,
  void Function(CampaignDocument campaign)? onTap,
}) =>
    (campaigns.whenOrNull(
          data: (data) => data.length != 0
              ? data
                  .map(
                    (campaign) => HorizontalCampaignCard(
                      key: ValueKey(campaign.id ?? campaign.hashCode),
                      onTap: () => onTap?.call(campaign),
                      imageUrl: campaign.photoThumbnail ?? '',
                      campaignName: campaign.campaignName ?? '',
                      dateEndCampaign: campaign.dateEndCampaign ?? '',
                      campaignGoalAmount: campaign.goalAmount ?? 0,
                      campaignCurrentAmount: campaign.currentAmount ?? 0,
                      cardWidth: double.infinity,
                    ),
                  )
                  .toList()
              : [
                  Container(
                    child: Center(
                      child: AutoSizeText('Belum Ada Kegiatan'),
                    ),
                  ),
                ],
          error: (error, stackTrace) => [
            Center(
              child: AutoSizeText(
                'NETWORK ERROR!',
              ),
            ),
          ],
          loading: () => [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 35,
                ),
              ),
            ),
          ],
        ) ??
        []);
