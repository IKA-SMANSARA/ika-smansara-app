import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';

class PaymentConfirmationDialog extends StatelessWidget {
  final int donationAmount;
  final int paymentFee;
  final int totalReceived;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const PaymentConfirmationDialog({
    super.key,
    required this.donationAmount,
    required this.paymentFee,
    required this.totalReceived,
    required this.onConfirm,
    required this.onCancel,
  });

  static Future<void> show(
    BuildContext context, {
    required int donationAmount,
    required int paymentFee,
    required int totalReceived,
    required VoidCallback onConfirm,
    required VoidCallback onCancel,
  }) {
    return showDialog(
      context: context,
      builder: (context) => PaymentConfirmationDialog(
        donationAmount: donationAmount,
        paymentFee: paymentFee,
        totalReceived: totalReceived,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: const Text(
        'Konfirmasi Pembayaran',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jumlah Donasi: ${donationAmount.toIDRCurrencyFormat()}',
            style: const TextStyle(height: 1.5),
          ),
          Text(
            'Biaya Layanan: ${paymentFee.toIDRCurrencyFormat()}',
            style: const TextStyle(height: 1.5),
          ),
          Text(
            'Total Diterima: ${totalReceived.toIDRCurrencyFormat()}',
            style: const TextStyle(height: 1.5, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'Apakah Anda yakin ingin melanjutkan pembayaran?',
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(
            'Batal',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        ElevatedButton(
          onPressed: onConfirm,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF104993),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: const Text('Bayar'),
        ),
      ],
    );
  }
}