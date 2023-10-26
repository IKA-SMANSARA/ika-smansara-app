import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/account/account.dart';

class AccountPortraitScreen extends StatelessWidget {
  const AccountPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LogoutCubit()),
        BlocProvider(create: (_) => CheckAdminStatusCubit()..checkUserStatus()),
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
    );
  }
}
