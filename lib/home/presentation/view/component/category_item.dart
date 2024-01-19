import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.categoryIcon,
    required this.categoryTitle,
    required this.onPress,
    super.key,
  });

  final String? categoryTitle;
  final Widget? categoryIcon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          categoryIcon ?? const Placeholder(),
          Expanded(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Center(
                    child: Text(
                      categoryTitle ?? '',
                      style: GoogleFonts.inter(fontSize: 10),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
