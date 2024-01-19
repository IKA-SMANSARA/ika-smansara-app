import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/login/login.dart';

class LoginContainerPage extends StatelessWidget {
  const LoginContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32,
          ),
          child: Assets.images.logoIkaSmansaraColored.svg(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'Selamat Datang',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: LoginFormField(),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Belum punya akun ? ',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Daftar',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF104993),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.push(Routes.register),
                  ),
                ],
              ),
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
      ],
    );
  }
}
