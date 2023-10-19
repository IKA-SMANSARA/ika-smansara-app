import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/register/register.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (_) => RegisterFormBloc(),
      child: Builder(
        builder: (context) {
          final registerFormBloc = context.read<RegisterFormBloc>();

          return FormBlocListener<RegisterFormBloc, String, String>(
            onSubmitting: (context, state) {
              CustomLoadingDialog.show(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('submitting data profile'),
                ),
              );
            },
            onSubmissionFailed: (context, state) {
              CustomLoadingDialog.hide(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('submitting failed'),
                ),
              );
            },
            onSuccess: (context, state) {
              CustomLoadingDialog.hide(context);
              context.go(Routes.login);
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
                  textFieldBloc: registerFormBloc.email,
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
                  textFieldBloc: registerFormBloc.fullName,
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                  decoration: buildInputDecoration(
                    l10n.fullNameFieldTitle,
                    l10n.fullNameFieldTitle,
                  ),
                ),
                SizedBox(
                  height: 200.h,
                  child: TextFieldBlocBuilder(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    maxLines: null,
                    expands: true,
                    textFieldBloc: registerFormBloc.address,
                    keyboardType: TextInputType.streetAddress,
                    textAlignVertical: TextAlignVertical.top,
                    autofillHints: const [AutofillHints.fullStreetAddress],
                    textInputAction: TextInputAction.next,
                    decoration: buildInputDecoration(
                      l10n.addressFieldTitle,
                      l10n.addressFieldTitle,
                    ),
                  ),
                ),
                TextFieldBlocBuilder(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  textFieldBloc: registerFormBloc.phone,
                  keyboardType: TextInputType.phone,
                  autofillHints: const [AutofillHints.telephoneNumber],
                  textInputAction: TextInputAction.next,
                  decoration: buildInputDecoration(
                    l10n.phoneFieldTitle,
                    l10n.examplePhoneNumberFieldTitle,
                  ),
                ),
                CheckboxFieldBlocBuilder(
                  booleanFieldBloc: registerFormBloc.isAlumnus,
                  body: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Apakah anda lulusan dari SMA Negeri 1 Jepara ?',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TextFieldBlocBuilder(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  textFieldBloc: registerFormBloc.graduateYear,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: buildInputDecoration(
                    l10n.graduateYearFieldTitle,
                    'Contoh : 2008',
                  ),
                ),
                TextFieldBlocBuilder(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  textFieldBloc: registerFormBloc.password,
                  keyboardType: TextInputType.visiblePassword,
                  suffixButton: SuffixButton.obscureText,
                  autofillHints: const [AutofillHints.password],
                  textInputAction: TextInputAction.next,
                  decoration: buildInputDecoration(
                    l10n.passwordFieldTitle,
                    l10n.passwordFieldTitle,
                  ),
                ),
                TextFieldBlocBuilder(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  textFieldBloc: registerFormBloc.confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  suffixButton: SuffixButton.obscureText,
                  autofillHints: const [AutofillHints.password],
                  textInputAction: TextInputAction.next,
                  decoration: buildInputDecoration(
                    l10n.repeatPasswordFieldTitle,
                    l10n.repeatPasswordFieldTitle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: RegisterButton(
                    onSubmitted: registerFormBloc.submit,
                  ),
                ),
              ],
            ),
          );
        },
      ),
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
      contentPadding: EdgeInsets.all(6.w),
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
