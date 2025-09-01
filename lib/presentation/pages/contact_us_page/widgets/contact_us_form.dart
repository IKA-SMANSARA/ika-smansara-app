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
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              print('DEBUG ContactUsForm:');
              print('  - controller.text: "${controller.text}"');
              print('  - controller.text.trim(): "${controller.text.trim()}"');
              print('  - controller.text.trim().isEmpty: ${controller.text.trim().isEmpty}');
              print('  - isLoading: $isLoading');
              print('  - onSubmit is null: ${onSubmit == null}');

              final shouldDisable = controller.text.trim().isEmpty || isLoading;
              print('  - shouldDisable: $shouldDisable');

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