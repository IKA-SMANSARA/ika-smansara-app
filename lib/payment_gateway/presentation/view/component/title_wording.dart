import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWording extends StatelessWidget {
  const TitleWording({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
