import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Builder(
      builder: (context) {
        final loginFormBloc = context.read<LoginFormBloc>();

        return FormBlocListener<LoginFormBloc, String, String>(
          onSubmitting: (context, state) {
            CustomLoadingDialog.show(context);
          },
          onSubmissionFailed: (context, state) {
            CustomLoadingDialog.hide(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('login failed'),
              ),
            );
          },
          onSuccess: (context, state) {
            CustomLoadingDialog.hide(context);
            context.go(Routes.home);
          },
          onFailure: (context, state) {
            CustomLoadingDialog.hide(context);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failureResponse ?? 'Failure!'),
              ),
            );
          },
          child: Column(
            children: [
              TextFieldBlocBuilder(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                textFieldBloc: loginFormBloc.email,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                textInputAction: TextInputAction.next,
                decoration: buildInputDecoration(
                  l10n.emailFieldTitle,
                  l10n.emailFieldTitle,
                ),
              ),
              TextFieldBlocBuilder(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                textFieldBloc: loginFormBloc.password,
                keyboardType: TextInputType.visiblePassword,
                suffixButton: SuffixButton.obscureText,
                autofillHints: const [AutofillHints.password],
                textInputAction: TextInputAction.next,
                decoration: buildInputDecoration(
                  l10n.passwordFieldTitle,
                  l10n.passwordFieldTitle,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: LoginButton(
                  onSubmitted: loginFormBloc.submit,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  InputDecoration buildInputDecoration(String label, String hint) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      label: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
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
      hintText: hint,
      hintStyle: GoogleFonts.inter(
        fontSize: 18.sp,
        color: Colors.black45,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
