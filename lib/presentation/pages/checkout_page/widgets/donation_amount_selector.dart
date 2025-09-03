import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class DonationAmountSelector extends StatelessWidget {
  final String selectedAmount;
  final List<String> defaultAmounts;
  final TextEditingController customAmountController;
  final Function(String) onAmountSelected;
  final Function(String) onCustomAmountChanged;

  const DonationAmountSelector({
    super.key,
    required this.selectedAmount,
    required this.defaultAmounts,
    required this.customAmountController,
    required this.onAmountSelected,
    required this.onCustomAmountChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pilih Jumlah Donasi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),

        // Default amount buttons
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: defaultAmounts.map((amount) {
            final isSelected = selectedAmount == amount;
            return SizedBox(
              width: (MediaQuery.of(context).size.width - 40 - 24) / 2, // Two buttons per row
              height: 60,
              child: ElevatedButton(
                onPressed: () => onAmountSelected(amount),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected ? const Color(0xFF104993) : Colors.white,
                  foregroundColor: isSelected ? Colors.white : const Color(0xFF104993),
                  side: const BorderSide(color: Color(0xFF104993), width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  int.parse(amount).toIDRCurrencyFormat(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }).toList(),
        ),

        const SizedBox(height: 16),

        // Custom amount input
        const Text(
          'Atau Masukkan Jumlah Lain',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),

        CustomTextField(
          labelText: 'Jumlah Donasi',
          controller: customAmountController,
          keyboardType: TextInputType.number,
          onChanged: onCustomAmountChanged,
          textInputAction: TextInputAction.done,
        ),

        const SizedBox(height: 8),
        Text(
          'Minimal donasi Rp 50.000',
          style: TextStyle(
            fontSize: 12,
            color: Colors.red.shade600,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}