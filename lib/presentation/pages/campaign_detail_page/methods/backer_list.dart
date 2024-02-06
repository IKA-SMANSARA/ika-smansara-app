import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';

List<Widget> backerList({
  required int backerCount,
  required String campaignId,
  required WidgetRef ref,
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
            onPressed: () {},
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
      BackerCard(),
      verticalSpace(8),
      BackerCard(),
      verticalSpace(8),
      BackerCard(),
      verticalSpace(8),
      BackerCard(),
      verticalSpace(8),
    ];
