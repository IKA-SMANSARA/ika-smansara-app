import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

        return CustomTextField(
          textEditingController: _emailController,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {
            context.read<LoginBloc>().add(
                  LoginEvent.loginEmailChange(email: _emailController.text),
                );
          },
          errorText: state.email.displayError?.text(),
          label: l10n.emailFieldTitle,
          hint: l10n.emailFieldTitle,
        );
      },
    );
  }
}
