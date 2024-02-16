import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget bankAccountItem({
  VoidCallback? onTap,
  required String bankName,
  required String accountBankNumber,
  required String realNameUserAccountBank,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        bankName,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      verticalSpace(4),
                      AutoSizeText(
                        accountBankNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      verticalSpace(4),
                      AutoSizeText(
                        'a/n $realNameUserAccountBank',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
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
            verticalSpace(16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                color: Colors.grey,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
