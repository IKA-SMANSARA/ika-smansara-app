import 'package:flutter/material.dart';
import 'package:ika_smansara/account/account.dart';

class IsAdminAccountScreen extends StatelessWidget {
  const IsAdminAccountScreen({super.key});

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
            const AccountAdminProfile(),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 230),
                child: CreateCampaignButton(),
              ),
            ),
            const AccountAdminMenuList(),
          ],
        ),
      ),
    );
  }
}
