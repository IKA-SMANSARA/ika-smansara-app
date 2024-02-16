import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

List<Widget> descriptionCampaignDetail({
  required String description,
}) =>
    [
      AutoSizeText(
        'Tentang Penggalanan Dana',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      verticalSpace(8),
      ExpandableText(
        description,
        textAlign: TextAlign.justify,
        expandText: 'Baca selengkapnya',
        collapseOnTextTap: true,
        expandOnTextTap: true,
        linkColor: const Color(0xFF104993),
        animation: true,
        maxLines: 4,
      ),
    ];
