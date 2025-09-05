import 'package:flutter/material.dart';

class AlumniCheckbox extends StatelessWidget {
  final bool isAlumni;
  final ValueChanged<bool?> onChanged;
  final bool enabled;

  const AlumniCheckbox({
    super.key,
    required this.isAlumni,
    required this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Saya adalah alumni'),
      value: isAlumni,
      onChanged: enabled ? onChanged : null,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: const Color(0xFF104993),
    );
  }
}