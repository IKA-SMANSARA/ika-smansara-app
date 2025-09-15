import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/widgets/vertical_campaign_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

List<Widget> campaignList({
  required String title,
  void Function(CampaignDocument campaign)? onTap,
  VoidCallback? onPressed,
  required AsyncValue<List<CampaignDocument>> campaigns,
}) =>
    [
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: AutoSizeText(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                minFontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Flexible(
              flex: 2,
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: AutoSizeText(
                  'selengkapnya',
                  style: TextStyle(
                    color: const Color(0xFF104993),
                  ),
                  maxLines: 1,
                  minFontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
      campaigns.when(
        data: (data) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: data
                .map(
                  (campaign) => Padding(
                    key: ValueKey(campaign.id ?? campaign.hashCode),
                    padding: EdgeInsets.only(
                      left: campaign == data.first ? 24 : 10,
                      right: campaign == data.last ? 24 : 0,
                    ),
                    child: VerticalCampaignCard(
                      onTap: () => onTap?.call(campaign),
                      imageUrl: campaign.photoThumbnail ?? '',
                      campaignName: campaign.campaignName ?? '',
                      dateEndCampaign: campaign.dateEndCampaign ?? '',
                      campaignGoalAmount: campaign.goalAmount ?? 0,
                      campaignCurrentAmount: campaign.currentAmount ?? 0,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        error: (error, stackTrace) => const Center(
          child: AutoSizeText(
            'NETWORK ERROR!',
            maxLines: 1,
            minFontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        loading: () => Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: LoadingAnimationWidget.inkDrop(
              color: Colors.amber,
              size: 35,
            ),
          ),
        ),
      ),
    ];
