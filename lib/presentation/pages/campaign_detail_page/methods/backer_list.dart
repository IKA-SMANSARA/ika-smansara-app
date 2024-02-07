import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';

List<Widget> backerList({
  required int backerCount,
  required WidgetRef ref,
  required CampaignDocument campaign,
}) =>
    [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            'Donatur ($backerCount)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {
              ref.read(routerProvider).pushNamed(
                    'backer-list-page',
                    extra: campaign,
                  );
            },
            child: AutoSizeText(
              'Lihat Semua',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF104993),
              ),
            ),
          ),
        ],
      ),
      verticalSpace(4),
      BackerCard(
        amount: '0',
        backerName: 'Test',
        dateTime: 'now',
      ),
      verticalSpace(8),
    ];
