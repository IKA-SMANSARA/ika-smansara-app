import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({super.key});

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
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                padding: const EdgeInsets.symmetric(vertical: 8),
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
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 6),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xff4880FF),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xffff486a),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xffBBBCBC),
        ),
      ),
      fillColor: const Color(0xffF8FAFB),
      filled: true,
      hintText: hint,
      hintStyle: GoogleFonts.inter(
        fontSize: 18,
        color: Colors.black45,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
