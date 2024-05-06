import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget checkoutInformationTable({
  required String campaignName,
  required String userName,
  required String amount,
  required String paymentFee,
  required String totalAmount,
}) =>
    Table(
      children: [
        TableRow(
          children: [
            AutoSizeText(
              'Nama Acara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.start,
            ),
            AutoSizeText(
              campaignName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        TableRow(
          children: [
            verticalSpace(8),
            verticalSpace(8),
          ],
        ),
        TableRow(
          children: [
            AutoSizeText(
              'Nama Donatur',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.start,
            ),
            AutoSizeText(
              userName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        TableRow(
          children: [
            verticalSpace(8),
            verticalSpace(8),
          ],
        ),
        TableRow(
          children: [
            AutoSizeText(
              'Jumlah Donasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.start,
            ),
            AutoSizeText(
              amount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        TableRow(
          children: [
            verticalSpace(8),
            verticalSpace(8),
          ],
        ),
        TableRow(
          children: [
            AutoSizeText(
              'Biaya Layanan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.start,
            ),
            AutoSizeText(
              paymentFee,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        TableRow(
          children: [
            verticalSpace(16),
            verticalSpace(16),
          ],
        ),
        TableRow(
          children: [
            AutoSizeText(
              'Total Dana yang Diterima',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.start,
            ),
            AutoSizeText(
              totalAmount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ],
    );
