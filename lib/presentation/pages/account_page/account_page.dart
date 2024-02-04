import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/build_context_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/create_campaign_button.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/menu_account.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/user_info.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncUserData = ref.watch(userDataProvider);

    Constants.logger.d(asyncUserData);
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xFF104993),
              ),
            ),
            userInfo(
              userData: asyncUserData,
              isAdmin: asyncUserData.valueOrNull?.isAdmin ?? false,
            ),
            createCampaignButton(
              isAdmin: asyncUserData.valueOrNull?.isAdmin ?? false,
              title: 'Buat Galang Dana',
              onPressed: () => context.showSnackBar('create campaign!'),
            ),
            menuAccount(
              ref: ref,
              isAdmin: asyncUserData.valueOrNull?.isAdmin ?? false,
            ),
          ],
        ),
      ],
    );
  }
}
