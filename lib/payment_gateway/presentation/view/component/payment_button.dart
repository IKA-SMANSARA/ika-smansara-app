import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({required this.onPress, super.key});

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF104993),
          minimumSize: const Size(350, 36),
        ),
        onPressed: onPress,
        child: Text(
          'Bayar',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
