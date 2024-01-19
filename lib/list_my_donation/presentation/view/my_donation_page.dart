import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

class MyDonationPage extends StatelessWidget {
  const MyDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: const Color(0xFF104993),
          title: Center(
            child: Text(
              l10n.myDonationBottomNavTitle,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: BlocProvider(
          create: (_) => MyDonationsBloc(),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CardCarousel(),
                Padding(
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  child: Text(
                    l10n.donationHistoryTitle,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Divider(
                    color: Colors.blueGrey.withAlpha(150),
                    thickness: 0.5,
                    height: 0.5,
                  ),
                ),
                const CardDonationHistoryListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
