import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class EmptyBankAccountState extends StatelessWidget {
  const EmptyBankAccountState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF104993).withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.account_balance_outlined,
                size: 48,
                color: const Color(0xFF104993),
              ),
            ),
            const SizedBox(height: 24),
            AutoSizeText(
              'Belum ada rekening bank',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
              textAlign: TextAlign.center,
              maxLines: 2,
              minFontSize: 16,
            ),
            const SizedBox(height: 8),
            AutoSizeText(
              'Tambahkan rekening bank Anda untuk memudahkan proses donasi dan penarikan dana',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
              textAlign: TextAlign.center,
              maxLines: 3,
              minFontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}