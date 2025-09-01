import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final bool expands;
  final bool enabled;
  final bool forceMultiline;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextAlignVertical? textAlignVertical;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.maxLines,
    this.expands = false,
    this.forceMultiline = false,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    this.textAlignVertical,
    this.onChanged,
    this.onTap,
    this.enabled = true,
  })  : textInputAction = textInputAction ?? ((expands || forceMultiline) ? TextInputAction.newline : TextInputAction.done),
        keyboardType = keyboardType ?? ((expands || forceMultiline) ? TextInputType.multiline : TextInputType.text);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      enabled: enabled,
      onChanged: onChanged,
      maxLines: (expands || forceMultiline) ? null : (maxLines ?? 1),
      minLines: (expands || forceMultiline) ? null : 1, // Must be null when multiline
      controller: controller,
      expands: expands,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      textAlignVertical: textAlignVertical,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade800,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
