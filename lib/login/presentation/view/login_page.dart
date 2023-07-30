import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginObscureTextCubit(),
        ),
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
      ],
      child: const SafeArea(
        child: AdaptiveScreen(
          androidScreen: LoginPortraitScreen(),
        ),
      ),
    );
  }
}
