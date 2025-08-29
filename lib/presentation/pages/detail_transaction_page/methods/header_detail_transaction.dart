import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

List<Widget> headerDetailTransaction() =>
    [
      verticalSpace(16),
      Center(
        child: AutoSizeText(
          'Terima kasih atas donasi anda',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      verticalSpace(16),
    ];
