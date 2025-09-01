import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class ContactUsForm extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSubmit;
  final bool isLoading;

  const ContactUsForm({
    super.key,
    required this.controller,
    this.onSubmit,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    print('ContactUsForm build - isLoading: $isLoading');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tulis Pertanyaan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: CustomTextField(
            labelText: 'Jelaskan pertanyaan Anda...',
            controller: controller,
            expands: true,
            maxLines: null,
            textAlignVertical: TextAlignVertical.top,
            forceMultiline: true,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              final textEmpty = controller.text.trim().isEmpty;
              final shouldDisable = textEmpty || isLoading;
              print('Button condition - textEmpty: $textEmpty, isLoading: $isLoading, shouldDisable: $shouldDisable');
              return shouldDisable ? null : onSubmit;
            }(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade600,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: const Text(
              'Kirim Pertanyaan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}