import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class NotesSection extends StatelessWidget {
  final TextEditingController controller;

  const NotesSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Catatan Tambahan (Opsional)',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Tulis pesan atau doa untuk penerima donasi',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: CustomTextField(
            labelText: 'Tulis catatan Anda di sini...',
            controller: controller,
            expands: true,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            textAlignVertical: TextAlignVertical.top,
          ),
        ),
      ],
    );
  }
}