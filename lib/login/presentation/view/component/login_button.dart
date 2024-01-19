import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({this.onSubmitted, super.key});

  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF104993),
        minimumSize: const Size(350, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onPressed: onSubmitted,
      child: Text(
        l10n.loginTitle,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
