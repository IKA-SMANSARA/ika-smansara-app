import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/create_campaign_button.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/menu_account.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/user_info.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncUserData = ref.read(userDataProvider);

    // show error text if failed post question
    ref.listen(
      userDataProvider,
      (_, state) {
        state.showSnackbarOnError(context);
      },
    );

    Constants.logger.d(asyncUserData);
    return asyncUserData.isLoading
        ? Container(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.amber,
                size: 50,
              ),
            ),
          )
        : ListView(
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
                    context: context,
                    isAdmin: asyncUserData.valueOrNull?.isAdmin ?? false,
                    title: 'Buat Galang Dana',
                    onPressed: () =>
                        ref.read(routerProvider).pushNamed('create_campaign'),
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
