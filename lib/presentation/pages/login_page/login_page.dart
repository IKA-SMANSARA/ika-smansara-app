import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/pages/login_page/widgets/login_already_logged_in_state.dart';
import 'package:ika_smansara/presentation/pages/login_page/widgets/login_form.dart';
import 'package:ika_smansara/presentation/pages/login_page/widgets/login_initial_error_state.dart';
import 'package:ika_smansara/presentation/pages/login_page/widgets/login_initial_loading_state.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDataAsync = ref.watch(userDataProvider);

    ref.listen(
      userDataProvider,
      (previous, next) {
        if (next is AsyncData) {
          if (next.value != null) {
            ref.read(routerProvider).goNamed('main');
          }
        } else if (next is AsyncError) {
          // Error saat login process, bukan saat pengecekan status
          if (previous is AsyncData && previous?.value == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(next.error.toString())),
            );
          }
        }
      },
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: userDataAsync.when(
            loading: () => const LoginInitialLoadingState(),
            error: (error, stack) => LoginInitialErrorState(ref: ref),
            data: (userData) => userData != null
                ? const LoginAlreadyLoggedInState()
                : LoginForm(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
          ),
        ),
      ),
    );
  }
}