import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LoginPageStateBloc(),
          ),
          BlocProvider(
            create: (context) => LoginFormBloc(),
          ),
        ],
        child: GestureDetector(
          onTap: () => keyboardDismiss(context),
          child: Scaffold(
            body: Center(
              child: BlocListener<LoginPageStateBloc, LoginPageStateState>(
                listener: (context, state) {
                  if (state is Authenticated) {
                    context.go(Routes.home);
                  }
                },
                child: BlocBuilder<LoginPageStateBloc, LoginPageStateState>(
                  builder: (context, state) {
                    if (state is Initial) {
                      context.read<LoginPageStateBloc>().add(
                            const LoginPageStateEvent.started(),
                          );
                      return const CircularProgressIndicator();
                    }

                    if (state is Loading) {
                      context.read<LoginPageStateBloc>().add(
                            const LoginPageStateEvent.authentication(),
                          );
                      return const CircularProgressIndicator();
                    }

                    if (state is Authenticated) {
                      return const CircularProgressIndicator();
                    }

                    if (state is Unauthenticated) {
                      return const LoginContainerPage();
                    }

                    return const LoginContainerPage();
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
