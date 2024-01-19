import 'package:flutter/material.dart';
import 'package:ika_smansara/account/account.dart';

class IsUserAccountScreen extends StatelessWidget {
  const IsUserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(color: Color(0xFF104993)),
            ),
            const AccountUserProfile(),
            const AccountUserMenuList(),
          ],
        ),
      ),
    );
  }
}
