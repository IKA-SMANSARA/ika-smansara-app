import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/account/account.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class AccountUserMenuList extends StatelessWidget {
  const AccountUserMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is UnAuthentication) {
          context.go(Routes.login);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 270.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Divider(
                  color: Colors.blueGrey.withAlpha(150),
                  thickness: 0.5.h,
                  height: 0.5.h,
                ),
              ),
              AccountMenu(
                onPress: () {},
                menuIcon: Assets.images.person.svg(
                  width: 20.w,
                  height: 20.h,
                ),
                menuTitle: 'Ubah Profile',
              ),
              AccountMenu(
                onPress: () {},
                menuIcon: Assets.images.about.svg(
                  width: 20.w,
                  height: 20.h,
                ),
                menuTitle: 'Tentang IKA SMANSARA',
              ),
              AccountMenu(
                onPress: () {
                  return context.read<LogoutCubit>().logout();
                },
                menuIcon: Assets.images.logout.svg(
                  width: 20.w,
                  height: 20.h,
                ),
                menuTitle: 'Keluar',
              ),
            ],
          ),
        );
      },
    );
  }
}
