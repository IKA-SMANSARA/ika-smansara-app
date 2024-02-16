import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget buttonPay({
  required VoidCallback onPress,
  required bool isEnable,
}) =>
    SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: isEnable ? onPress : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF104993),
        ),
        child: AutoSizeText(
          'Bayar',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
