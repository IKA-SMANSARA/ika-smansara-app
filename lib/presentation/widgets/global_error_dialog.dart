import 'package:flutter/material.dart';

class GlobalErrorDialog extends StatelessWidget {
  final String title;
  final String message;
  final String? buttonText;
  final VoidCallback? onPressed;

  const GlobalErrorDialog({
    super.key,
    this.title = 'Pemberitahuan',
    required this.message,
    this.buttonText = 'OK',
    this.onPressed,
  });

  static Future<void> show(
    BuildContext context, {
    String title = 'Pemberitahuan',
    required String message,
    String buttonText = 'OK',
    VoidCallback? onPressed,
  }) {
    return showDialog(
      context: context,
      builder: (context) => GlobalErrorDialog(
        title: title,
        message: message,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        message,
        style: const TextStyle(height: 1.5),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            onPressed?.call();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF104993),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(buttonText!),
        ),
      ],
    );
  }
}