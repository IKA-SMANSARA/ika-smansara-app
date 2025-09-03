import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/pages/account_page/methods/menu_account_item.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

Widget menuAccount({
  bool isAdmin = false,
  required WidgetRef ref,
}) =>
    Column(
      children: [
        verticalSpace(300),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Divider(
            color: Colors.grey,
            height: 1,
          ),
        ),
        Visibility(
          visible: isAdmin,
          child: Column(
            children: [
              menuAccountItem(
                menuIcon: Assets.images.gift.svg(
                  width: 20,
                  height: 20,
                ),
                title: 'Penggalangan Dana',
                onTap: () => ref.read(routerProvider).pushNamed(
                      'my-campaigns-list-page',
                      extra: ref.read(userDataProvider).valueOrNull?.authKey,
                    ),
              ),
              verticalSpace(16),
              menuAccountItem(
                menuIcon: Assets.images.money.svg(
                  width: 20,
                  height: 20,
                ),
                title: 'Riwayat Pencairan Dana',
                onTap: () => ref.read(routerProvider).pushNamed(
                      'payout-history-page',
                    ),
              ),
              verticalSpace(16),
              menuAccountItem(
                menuIcon: Assets.images.creditCard.svg(
                  width: 20,
                  height: 20,
                ),
                title: 'Data Rekening',
                onTap: () => ref
                    .read(routerProvider)
                    .pushNamed('bank-account-list-page'),
              ),
              verticalSpace(16),
            ],
          ),
        ),
        menuAccountItem(
          menuIcon: Assets.images.person.svg(
            width: 20,
            height: 20,
          ),
          title: 'Ubah Profile',
          onTap: () => ref.read(routerProvider).pushNamed('user-profile-page'),
        ),
        verticalSpace(16),
        menuAccountItem(
          menuIcon: Assets.images.about.svg(
            width: 20,
            height: 20,
          ),
          title: 'Tentang IKA SMANSARA',
        ),
        verticalSpace(16),
        menuAccountItem(
          menuIcon: Assets.images.logout.svg(
            width: 20,
            height: 20,
          ),
          title: 'Keluar',
          onTap: () => ref.read(userDataProvider.notifier).logout(),
        ),
        verticalSpace(300),
      ],
    );
