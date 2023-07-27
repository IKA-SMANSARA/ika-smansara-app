import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class MainPortraitScreen extends StatelessWidget {
  const MainPortraitScreen({required this.screen, super.key});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tabs = [
      NamedNavBarItemWidget(
        initLocation: Routes.home,
        icon: const Icon(Icons.home_outlined),
        label: l10n.homeBottomNavTitle,
      ),
      NamedNavBarItemWidget(
        initLocation: Routes.myDonation,
        icon: const Icon(Icons.favorite_border),
        label: l10n.myDonationBottomNavTitle,
      ),
      NamedNavBarItemWidget(
        initLocation: Routes.account,
        icon: const Icon(Icons.person_outline),
        label: l10n.accountBottomNavTitle,
      ),
    ];

    return Scaffold(
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
            selectedLabelStyle: GoogleFonts.inter(),
            unselectedLabelStyle: GoogleFonts.inter(),
            backgroundColor: Colors.white,
            mouseCursor: SystemMouseCursors.grab,
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          );
        },
      ),
    );
  }
}
