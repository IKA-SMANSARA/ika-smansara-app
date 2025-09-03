import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionStatusCard extends StatelessWidget {
  final String status;
  final String transactionId;

  const TransactionStatusCard({
    super.key,
    required this.status,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    final statusInfo = _getStatusInfo(status);

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
            'Status Transaksi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),

          // Status Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: statusInfo.color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: statusInfo.color),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  statusInfo.icon,
                  size: 16,
                  color: statusInfo.color,
                ),
                const SizedBox(width: 6),
                Text(
                  statusInfo.text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: statusInfo.color,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Transaction ID
          const Text(
            'ID Transaksi',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Text(
                  transactionId,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: transactionId));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('ID transaksi berhasil disalin'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.copy,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _StatusInfo _getStatusInfo(String status) {
    switch (status.toLowerCase()) {
      case 'success':
        return _StatusInfo(
          text: 'Berhasil',
          color: Colors.green,
          icon: Icons.check_circle,
        );
      case 'pending':
        return _StatusInfo(
          text: 'Menunggu Pembayaran',
          color: Colors.orange,
          icon: Icons.schedule,
        );
      case 'expire':
      case 'expired':
        return _StatusInfo(
          text: 'Kadaluarsa',
          color: Colors.red,
          icon: Icons.cancel,
        );
      case 'failed':
        return _StatusInfo(
          text: 'Gagal',
          color: Colors.red,
          icon: Icons.error,
        );
      default:
        return _StatusInfo(
          text: 'Tidak Diketahui',
          color: Colors.grey,
          icon: Icons.help,
        );
    }
  }
}

class _StatusInfo {
  final String text;
  final Color color;
  final IconData icon;

  _StatusInfo({
    required this.text,
    required this.color,
    required this.icon,
  });
}