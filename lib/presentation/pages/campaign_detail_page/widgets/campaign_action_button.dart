import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class CampaignActionButton extends StatelessWidget {
  final CampaignDocument? campaign;
  final String fromHome;
  final CampaignDocument campaignData;
  final WidgetRef ref;

  const CampaignActionButton({
    required this.campaign,
    required this.fromHome,
    required this.campaignData,
    required this.ref,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (campaign == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (fromHome == 'false') {
            ref.read(routerProvider).pushNamed(
              'update-campaign-page',
              extra: campaignData,
            );
          } else {
            ref.read(routerProvider).pushNamed(
              'checkout-page',
              extra: campaign,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF104993),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
        child: Text(
          fromHome == 'false' ? 'Ubah Informasi Acara' : 'Kirim Donasi',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}