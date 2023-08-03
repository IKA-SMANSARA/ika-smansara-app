import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            return CustomTextField(
              textEditingController: _passwordController,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.visiblePassword,
              obscureText: stateObscureText.visible,
              onEditingComplete: () {
                context.read<LoginBloc>().add(
                      LoginEvent.loginPasswordChange(
                        password: _passwordController.text,
                      ),
                    );
              },
              errorText: state.password.displayError?.text(),
              hint: l10n.passwordFieldTitle,
              label: l10n.passwordFieldTitle,
              passwordVisibilitiesIcon: Padding(
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
            );
          },
        );
      },
    );
  }
}
