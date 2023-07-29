import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/account/account.dart';

class AccountPortraitScreen extends StatelessWidget {
  const AccountPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Container(
              height: 250.h,
              decoration: const BoxDecoration(color: Color(0xFF104993)),
            ),
            const AccountUserProfile(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 227.h),
                child: const CreateCampaignButton(),
              ),
            ),
            const AccountMenuList(),
          ],
        ),
      ),
    );
  }
}
