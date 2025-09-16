import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class GraduateYearField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;

  const GraduateYearField({
    super.key,
    required this.controller,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: 'Tahun Lulus',
      controller: controller,
      keyboardType: TextInputType.number,
      enabled: enabled,
    );
  }
}