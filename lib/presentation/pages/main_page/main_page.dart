import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/pages/account_page/account_page.dart';
import 'package:ika_smansara/presentation/pages/contact_us_page/contact_us_page.dart';
import 'package:ika_smansara/presentation/pages/home_page/home_page.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/my_donation_page.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/bottom_nav_bar.dart';
import 'package:ika_smansara/presentation/widgets/bottom_nav_bar_item.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  PageController pageController = PageController();
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (previous != null && next is AsyncData && next.value == null) {
          ref.read(routerProvider).goNamed('login');
        } else if (next is AsyncError) {
          context.showSnackBar(
            next.error.toString(),
          );
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              selectedPage = value;
            }),
            children: [
              Center(
                child: HomePage(),
              ),
              Center(
                child: MyDonationPage(),
              ),
              Center(
                child: AccountPage(),
              ),
              Center(
                child: ContactUsPage(),
              ),
            ],
          ),
          BottomNavBar(
            items: [
              BottomNavBarItem(
                index: 0,
                isSelected: selectedPage == 0,
                title: 'Beranda',
                iconData: Icons.home_outlined,
                selectedIconData: Icons.home_filled,
              ),
              BottomNavBarItem(
                index: 1,
                isSelected: selectedPage == 1,
                title: 'Donasiku',
                iconData: Icons.favorite_outline,
                selectedIconData: Icons.favorite,
              ),
              BottomNavBarItem(
                index: 2,
                isSelected: selectedPage == 2,
                title: 'Akun',
                iconData: Icons.person_outline,
                selectedIconData: Icons.person,
              ),
              BottomNavBarItem(
                index: 3,
                isSelected: selectedPage == 3,
                title: 'Hubungi Kami',
                iconData: Icons.headset_mic_outlined,
                selectedIconData: Icons.headset_mic,
              ),
            ],
            onTap: (index) {
              selectedPage = index;
              pageController.animateToPage(
                selectedPage,
                duration: const Duration(
                  milliseconds: 200,
                ),
                curve: Curves.easeInOut,
              );
            },
            selectedIndex: 0,
          ),
        ],
      ),
    );
  }
}
