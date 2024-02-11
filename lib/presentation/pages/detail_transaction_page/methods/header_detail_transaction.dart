import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

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
