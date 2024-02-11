import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

List<Widget>? contentDetailTransaction({
  required AsyncValue<TransactionDocument?> transactions,
  required CampaignDocument? campaign,
  required WidgetRef ref,
}) =>
    transactions.whenOrNull(
      data: (data) => [
        AutoSizeText(
          data?.campaignName ?? '',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        verticalSpace(16),
        SizedBox(
          child: CachedNetworkImage(
            imageUrl: data?.campaignImage ?? '',
            placeholder: (context, url) =>
                const CircularProgressIndicator.adaptive(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        verticalSpace(16),
        Table(
          children: [
            TableRow(
              children: [
                AutoSizeText(
                  'Nomor ID Donasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  data?.id ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  'Tanggal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  formatDate(data?.createdAt ?? ''),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  'Donasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  (data?.amount ?? 0).toIDRCurrencyFormat(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  'Biaya Layanan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  (data?.paymentFee ?? 0).toIDRCurrencyFormat(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  ((data?.amount ?? 0) + (data?.paymentFee ?? 0))
                      .toIDRCurrencyFormat(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  'Status Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  data?.paymentStatus ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF104993),
                    fontSize: 14,
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
          ],
        ),
        verticalSpace(24),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              ref.read(routerProvider).pushNamed(
                    'checkout-page',
                    extra: campaign,
                  );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF104993),
            ),
            child: AutoSizeText(
              'Donasi Lagi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
      error: (error, stackTrace) => [
        const Center(
          child: Text(
            'NETWORK ERROR!',
          ),
        ),
      ],
      loading: () => [
        const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ],
    );
