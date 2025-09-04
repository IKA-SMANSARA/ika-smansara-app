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
          data: (data) => data.isNotEmpty
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
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF104993).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFF104993).withValues(alpha: 0.2),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.campaign_outlined,
                          size: 48,
                          color: Color(0xFF104993),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Belum Ada Kegiatan',
                          style: TextStyle(
                            color: Color(0xFF104993),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Kegiatan dalam kategori ini akan muncul di sini',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
          error: (error, stackTrace) => [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.red.withValues(alpha: 0.2),
                ),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: Colors.red,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Gagal memuat data kampanye',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Silakan coba lagi nanti',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
          loading: () => [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: const Color(0xFFD52014),
                  size: 35,
                ),
              ),
            ),
          ],
        ) ??
        []);
