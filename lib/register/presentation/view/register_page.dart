import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/register/register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: GestureDetector(
        onVerticalDragDown: (_) => keyboardDismiss(context),
        onTap: () => keyboardDismiss(context),
        onHorizontalDragDown: (_) => keyboardDismiss(context),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF104993),
            title: Text(
              l10n.registerTitle,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Mari mulai berbagi kebaikan untuk sesama',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Divider(
                  color: Colors.blueGrey.withAlpha(150),
                  thickness: 0.5,
                  height: 0.5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: RegisterFormField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
