import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

List<Widget> headerCampaignDetail({
  required String title,
  required String remainingDays,
  required String currentAmount,
  required String goalAmount,
  required double valueProgressIndicator,
  required int backerCount,
}) =>
    [
      AutoSizeText(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      verticalSpace(24),
      AutoSizeText(
        'Terkumpul',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      verticalSpace(8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AutoSizeText(
                currentAmount,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              AutoSizeText(
                ' dari ',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              AutoSizeText(
                goalAmount,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          ),
          AutoSizeText(
            remainingDays,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
      verticalSpace(8),
      SizedBox(
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey.shade200,
          color: const Color(0xFF104993),
          value: valueProgressIndicator,
        ),
      ),
      verticalSpace(8),
      Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.black,
            size: 18,
          ),
          horizontalSpace(4),
          AutoSizeText(
            backerCount.toString(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          AutoSizeText(
            ' orang telah berdonasi',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
      verticalSpace(16),
    ];
