import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

extension on EmailValidationError {
  String text() {
    switch (this) {
      case EmailValidationError.invalid:
        return 'Pastikan email yang dimasukkan valid';
    }
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField(this._emailController, {super.key});

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        _emailController.text = state.email.value;

        return TextField(
          controller: _emailController,
          textInputAction: TextInputAction.next,
          style: GoogleFonts.inter(
            fontSize: 18.sp,
            color: const Color(0xff7A7C7A),
            fontWeight: FontWeight.w400,
          ),
          onSubmitted: (email) {
            context.read<LoginBloc>().add(
                  LoginEvent.loginEmailChange(email: email),
                );
          },
          cursorColor: const Color(0xff4880FF),
          decoration: InputDecoration(
            errorText: state.email.displayError?.text(),
            label: Text(
              l10n.emailFieldTitle,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff7A7C7A),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Color(0xff4880FF),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Color(0xffff486a),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Color(0xffBBBCBC),
              ),
            ),
            fillColor: const Color(0xffF8FAFB),
            filled: true,
            hintText: 'email',
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: const Color(0xffBBBCBC),
              fontSize: 18.sp,
            ),
          ),
        );
      },
    );
  }
}
