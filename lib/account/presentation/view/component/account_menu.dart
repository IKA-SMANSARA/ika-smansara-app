import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountMenu extends StatelessWidget {
  const AccountMenu({
    required this.menuTitle,
    required this.menuIcon,
    required this.onPress,
    super.key,
  });

  final VoidCallback? onPress;
  final String? menuTitle;
  final Widget? menuIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    menuIcon ?? const Placeholder(),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        menuTitle ?? '',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Divider(
              color: Colors.blueGrey.withAlpha(150),
              thickness: 0.5,
              height: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
