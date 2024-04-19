import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
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
                  formatDate2(data?.transactionTime ?? ''),
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
                  'Batas Waktu Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  formatDate2(data?.expiryTime ?? ''),
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
                  'Bank / Merchant',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  data?.bank?.capitalizeFirstLetter ?? '',
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
                  'Tipe Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                AutoSizeText(
                  paymentType(data?.paymentType ?? ''),
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
                Visibility(
                  visible: data?.vaNumber != null,
                  child: AutoSizeText(
                    'Nomor Pembayaran VA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Visibility(
                  visible: data?.vaNumber != null,
                  child: AutoSizeText(
                    data?.vaNumber ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Visibility(
                  visible: data?.vaNumber != null,
                  child: verticalSpace(16),
                ),
                Visibility(
                  visible: data?.vaNumber != null,
                  child: verticalSpace(16),
                ),
              ],
            ),
            TableRow(
              children: [
                Visibility(
                  visible: data?.paymentCode != null,
                  child: AutoSizeText(
                    'Nomor Pembayaran',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Visibility(
                  visible: data?.paymentCode != null,
                  child: AutoSizeText(
                    data?.paymentCode ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Visibility(
                  visible: data?.paymentCode != null,
                  child: verticalSpace(16),
                ),
                Visibility(
                  visible: data?.paymentCode != null,
                  child: verticalSpace(16),
                ),
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
                  data?.paymentStatus?.capitalizeFirstLetter ?? '',
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
        Visibility(
          visible: data?.paymentStatus == "success" ||
              data?.paymentStatus == "expire",
          child: SizedBox(
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
        ),
        // Visibility(
        //   visible: data?.paymentStatus == "pending",
        //   child: SizedBox(
        //     width: double.infinity,
        //     height: 45,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         var transactionRequestData = TransactionRequest(
        //           amount: data?.amount,
        //           paymentFee: data?.paymentFee,
        //           campaignId: campaign?.id,
        //           campaignImage: campaign?.photoThumbnail,
        //           campaignName: campaign?.campaignName,
        //           userId: ref.read(userDataProvider).valueOrNull?.authKey,
        //           userName: ref.read(userDataProvider).valueOrNull?.name,
        //           userAddress: ref.read(userDataProvider).valueOrNull?.address,
        //           userEmail: ref.read(userDataProvider).valueOrNull?.email,
        //           userPhone: ref.read(userDataProvider).valueOrNull?.phone,
        //           transactionId: getRandomOrderIdNumber(),
        //           backerCount: campaign?.backerCount,
        //           currentAmount: campaign?.currentAmount,
        //           campaignDescription: campaign?.campaignDescription,
        //           categories: campaign?.categories,
        //           dateEndCampaign: campaign?.dateEndCampaign,
        //           dateStartCampaign: campaign?.dateStartCampaign,
        //           goalAmount: campaign?.goalAmount,
        //           isActive: campaign?.isActive,
        //           isDeleted: campaign?.isDeleted,
        //           photoThumbnail: campaign?.photoThumbnail,
        //           campaignCreatedBy: campaign?.createdBy,
        //         );

        //         ref.read(routerProvider).pushNamed(
        //               'webview-snap-page',
        //               extra: transactionRequestData,
        //             );
        //       },
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Color.fromARGB(255, 224, 62, 62),
        //       ),
        //       child: AutoSizeText(
        //         'Bayar',
        //         style: TextStyle(
        //           fontSize: 16,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        verticalSpace(24),
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
