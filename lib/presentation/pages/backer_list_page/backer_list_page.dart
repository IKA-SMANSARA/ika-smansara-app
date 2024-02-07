import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';

class BackerListPage extends ConsumerWidget {
  final CampaignDocument campaign;
  const BackerListPage(this.campaign, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          AutoSizeText(
            campaign.toString(),
          )
        ],
      ),
    );
  }
}
