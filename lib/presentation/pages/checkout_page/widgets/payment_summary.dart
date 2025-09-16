import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final String campaignName;
  final String userName;
  final String donationAmount;
  final String paymentFee;
  final String totalReceived;

  const PaymentSummary({
    super.key,
    required this.campaignName,
    required this.userName,
    required this.donationAmount,
    required this.paymentFee,
    required this.totalReceived,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
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

          // Campaign Name
          _buildSummaryRow('Program', campaignName),

          const SizedBox(height: 8),

          // User Name
          _buildSummaryRow('Donatur', userName),

          const SizedBox(height: 8),

          // Donation Amount
          _buildSummaryRow('Jumlah Donasi', donationAmount),

          const SizedBox(height: 8),

          // Payment Fee
          _buildSummaryRow('Biaya Layanan', paymentFee),

          const Divider(height: 16, color: Colors.grey),

          // Total Received
          _buildSummaryRow(
            'Total Diterima Program',
            totalReceived,
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: AutoSizeText(
            label,
            style: TextStyle(
              fontSize: 14,
              color: isTotal ? Colors.black87 : Colors.grey.shade600,
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
            ),
            maxLines: 1,
            minFontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Flexible(
          flex: 1,
          child: AutoSizeText(
            value,
            style: TextStyle(
              fontSize: 14,
              color: isTotal ? const Color(0xFF104993) : Colors.black87,
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
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