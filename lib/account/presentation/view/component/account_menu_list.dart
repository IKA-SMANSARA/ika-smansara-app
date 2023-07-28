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
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Penggalangan Dana',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Riwayat Pencairan Dana',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Data Rekening',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Ubah Profile',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Tentang IKA SMANSARA',
          ),
          AccountMenu(
            onPress: () {},
            menuIcon: Assets.images.trust.svg(
              width: 35.w,
              height: 35.h,
            ),
            menuTitle: 'Keluar',
          ),
        ],
      ),
    );
  }
}
