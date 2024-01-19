import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.screen, super.key});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tabs = [
      NamedNavBarItemWidget(
        initLocation: Routes.home,
        icon: const FaIcon(Icons.home_outlined),
        activeIcon: const FaIcon(Icons.home_rounded),
        label: l10n.homeBottomNavTitle,
        tooltip: l10n.homeBottomNavTitle,
      ),
      NamedNavBarItemWidget(
        initLocation: Routes.myDonation,
        icon: const FaIcon(Icons.favorite_border),
        activeIcon: const FaIcon(Icons.favorite_rounded),
        label: l10n.myDonationBottomNavTitle,
        tooltip: l10n.myDonationBottomNavTitle,
      ),
      NamedNavBarItemWidget(
        initLocation: Routes.account,
        icon: const FaIcon(Icons.person_outlined),
        activeIcon: const FaIcon(Icons.person_rounded),
        label: l10n.accountBottomNavTitle,
        tooltip: l10n.accountBottomNavTitle,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: screen,
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          buildWhen: (previous, current) => previous.index != current.index,
          builder: (context, state) {
            return BottomNavigationBar(
              onTap: (value) {
                if (state.index != value) {
                  context.read<NavigationCubit>().getNavBarItem(value);
                  context.go(tabs[value].initLocation);
                }
              },
              selectedIconTheme: IconThemeData(
                size: (IconTheme.of(context).size) ?? 0.0 * 1.3,
              ),
              items: tabs,
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
              fixedColor: const Color(0xFF104993),
              backgroundColor: Colors.white,
              mouseCursor: SystemMouseCursors.grab,
              landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            );
          },
        ),
      ),
    );
  }
}
