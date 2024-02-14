import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/common_methods/list_campaigns.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class MyCampaignsPage extends ConsumerWidget {
  final String userId;
  const MyCampaignsPage({required this.userId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncCampaignsData = ref.watch(
      getCampaignByUserIdProvider(
        userId: userId,
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          verticalSpace(16),
          ...listCampaigns(
            campaigns: asyncCampaignsData,
            onTap: (campaign) {
              ref.read(routerProvider).pushNamed(
                'campaign-detail-page',
                extra: campaign,
                queryParameters: {
                  "from-home": 'false',
                },
              );
            },
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
