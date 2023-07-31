import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

extension on PasswordValidationError {
  String text() {
    switch (this) {
      case PasswordValidationError.invalid:
        return '''minimal 8 karakter dan mengandung\nsetidaknya satu huruf dan angka''';
    }
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(this._passwordController, {super.key});

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        _passwordController.text = state.password.value;

        return BlocBuilder<LoginObscureTextCubit, LoginObscureTextState>(
          builder: (contextObscureText, stateObscureText) {
            return TextField(
              controller: _passwordController,
              cursorColor: const Color(0xff4880FF),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                color: const Color(0xff7A7C7A),
                fontWeight: FontWeight.w400,
              ),
              obscureText: stateObscureText.visible,
              onSubmitted: (password) {
                context
                    .read<LoginBloc>()
                    .add(LoginEvent.loginPasswordChange(password: password));
              },
              decoration: InputDecoration(
                errorText: state.password.displayError?.text(),
                label: Text(
                  l10n.passwordFieldTitle,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff7A7C7A),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 6.w),
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
                hintText: 'password',
                hintStyle: GoogleFonts.inter(
                  fontSize: 18.sp,
                  color: const Color(0xffBBBCBC),
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: IconButton(
                    splashRadius: 1,
                    icon: FaIcon(
                      color: const Color(0xffBBBCBC),
                      size: 18.sp,
                      (stateObscureText.visible)
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    ),
                    onPressed: () {
                      contextObscureText
                          .read<LoginObscureTextCubit>()
                          .toggleVisibility();
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
