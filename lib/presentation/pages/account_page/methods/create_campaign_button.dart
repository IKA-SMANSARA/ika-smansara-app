import 'package:flutter/material.dart';

Widget createCampaignButton({
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
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFD52014),
              minimumSize: Size(288, 36),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
