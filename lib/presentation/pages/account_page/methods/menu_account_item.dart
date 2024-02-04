import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget menuAccountItem({
  required Widget menuIcon,
  required String title,
  VoidCallback? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      menuIcon,
                      horizontalSpace(16),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
            verticalSpace(8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                color: Colors.grey,
                height: 1,
              ),
            )
          ],
        ),
      ),
    );
