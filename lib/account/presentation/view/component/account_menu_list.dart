import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/account/account.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class AccountMenuList extends StatelessWidget {
  const AccountMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 270.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Divider(
              color: Colors.blueGrey.withAlpha(150),
              thickness: 0.5.h,
              height: 0.5.h,
            ),
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.gift.svg(
              width: 20.w,
              height: 20.h,
            ),
            menuTitle: 'Penggalangan Dana',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.money.svg(
              width: 20.w,
              height: 20.h,
            ),
            menuTitle: 'Riwayat Pencairan Dana',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.creditCard.svg(
              width: 20.w,
              height: 20.h,
            ),
            menuTitle: 'Data Rekening',
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
            onPress: () {},
            menuIcon: Assets.images.logout.svg(
              width: 20.w,
              height: 20.h,
            ),
            menuTitle: 'Keluar',
          ),
        ],
      ),
    );
  }
}
