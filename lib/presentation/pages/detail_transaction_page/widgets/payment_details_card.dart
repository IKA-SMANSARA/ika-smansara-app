import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class PaymentDetailsCard extends StatelessWidget {
  final TransactionDocument transaction;

  const PaymentDetailsCard({
    super.key,
    required this.transaction,
  });

  String _capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
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
            'Detail Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Transaction Date
          _buildDetailRow(
            'Tanggal Transaksi',
            formatDate2(transaction.transactionTime ?? ''),
          ),

          // Expiry Time
          if (transaction.expiryTime != null && transaction.expiryTime!.isNotEmpty)
            _buildDetailRow(
              'Batas Waktu Pembayaran',
              formatDate2(transaction.expiryTime!),
            ),

          // Bank/Merchant
          if (transaction.bank != null && transaction.bank!.isNotEmpty)
            _buildDetailRow(
              'Bank/Merchant',
              _capitalizeFirstLetter(transaction.bank!),
            ),

          // Payment Type
          if (transaction.paymentType != null && transaction.paymentType!.isNotEmpty)
            _buildDetailRow(
              'Tipe Pembayaran',
              paymentType(transaction.paymentType!).toUpperCase(),
            ),

          // VA Number
          if (transaction.vaNumber != null && transaction.vaNumber!.isNotEmpty)
            _buildCopyableRow(
              'Nomor Virtual Account',
              transaction.vaNumber!,
              context,
            ),

          // Payment Code
          if (transaction.paymentCode != null && transaction.paymentCode!.isNotEmpty)
            _buildCopyableRow(
              'Kode Pembayaran',
              transaction.paymentCode!,
              context,
            ),

          // Notes
          if (transaction.note != null && transaction.note!.isNotEmpty)
            _buildDetailRow(
              'Catatan',
              transaction.note!,
            ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCopyableRow(String label, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: value));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$label berhasil disalin'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.copy,
                    size: 16,
                    color: Colors.grey,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}