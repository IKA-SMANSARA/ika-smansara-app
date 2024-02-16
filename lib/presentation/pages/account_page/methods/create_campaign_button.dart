import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget createCampaignButton({
  required BuildContext context,
  bool isAdmin = false,
  required String title,
  VoidCallback? onPressed,
}) =>
    Visibility(
      visible: isAdmin,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 230,
          left: 24,
          right: 24,
        ),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD52014),
                minimumSize: Size(288, 36),
              ),
              onPressed: onPressed,
              child: AutoSizeText(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
