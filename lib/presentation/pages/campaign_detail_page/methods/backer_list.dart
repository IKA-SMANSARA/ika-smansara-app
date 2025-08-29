import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

List<Widget> backerList({
  required int backerCount,
  required WidgetRef ref,
  required AsyncValue<List<TransactionDocument>> asyncBackerList,
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
      ...(asyncBackerList.whenOrNull(
            data: (data) => data
                .map(
                  (e) => BackerCard(
                    key: ValueKey(e.id ?? e.hashCode),
                    backerName: e.userName ?? '',
                    amount: (e.amount ?? 0).toIDRCurrencyFormat(),
                    dateTime: countDays(
                      e.createdAt,
                    ),
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
              Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 35,
                ),
              ),
            ],
          ) ??
          []),
      verticalSpace(8),
    ];
