import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';

class PaymentBreakdownCard extends StatelessWidget {
  final int amount;
  final int paymentFee;

  const PaymentBreakdownCard({
    super.key,
    required this.amount,
    required this.paymentFee,
  });

  @override
  Widget build(BuildContext context) {
    final totalPaid = amount + paymentFee;
    final totalReceived = amount;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ringkasan Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Amount Donated
          _buildAmountRow(
            'Jumlah Donasi',
            amount.toIDRCurrencyFormat(),
            Colors.black87,
          ),

          const SizedBox(height: 8),

          // Payment Fee
          _buildAmountRow(
            'Biaya Layanan',
            paymentFee.toIDRCurrencyFormat(),
            Colors.grey.shade600,
          ),

          const Divider(height: 16, color: Colors.grey),

          // Total Paid
          _buildAmountRow(
            'Total Dibayarkan',
            totalPaid.toIDRCurrencyFormat(),
            Colors.black87,
            isBold: true,
          ),

          const SizedBox(height: 8),

          // Total Received by Program
          _buildAmountRow(
            'Total Diterima Program',
            totalReceived.toIDRCurrencyFormat(),
            const Color(0xFF104993),
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _buildAmountRow(String label, String amount, Color color, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: AutoSizeText(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
            ),
            maxLines: 1,
            minFontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Flexible(
          flex: 1,
          child: AutoSizeText(
            amount,
            style: TextStyle(
              fontSize: 14,
              color: color,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
            ),
            maxLines: 1,
            minFontSize: 12,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}