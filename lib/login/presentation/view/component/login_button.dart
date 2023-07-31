import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

class LoginButton extends StatelessWidget {
  LoginButton(this._emailController, this._passwordController, {super.key});

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF104993),
            minimumSize: Size(350.w, 36.h),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
          ),
          onPressed: () {
            context.read<LoginBloc>().add(
                  LoginEvent.loginEmailChange(email: _emailController.text),
                );
            context.read<LoginBloc>().add(
                  LoginEvent.loginPasswordChange(
                    password: _passwordController.text,
                  ),
                );
            context.read<LoginBloc>().add(
                  const LoginEvent.loginSubmitted(),
                );
          },
          child: (state.status.isInProgress)
              ? const CircularProgressIndicator()
              : Text(
                  l10n.loginTitle,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        );
      },
    );
  }
}
