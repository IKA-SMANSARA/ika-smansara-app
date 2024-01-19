import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/account/account.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => LogoutCubit()),
          BlocProvider(
            create: (_) => CheckAdminStatusCubit()..checkUserStatus(),
          ),
        ],
        child: BlocBuilder<CheckAdminStatusCubit, CheckAdminStatusState>(
          builder: (context, state) {
            if (state is IsAdmin) {
              return const IsAdminAccountScreen();
            }

            if (state is IsUser) {
              return const IsUserAccountScreen();
            }

            return const IsUserAccountScreen();
          },
        ),
      ),
    );
  }
}
