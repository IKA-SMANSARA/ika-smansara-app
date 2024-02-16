import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class BottomNavBarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final IconData iconData;
  final IconData selectedIconData;

  const BottomNavBarItem({
    super.key,
    required this.index,
    required this.isSelected,
    required this.title,
    required this.iconData,
    required this.selectedIconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 35,
            height: 4,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF104993) : Colors.transparent,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(2),
              ),
            ),
          ),
          SizedBox(
            width: 25,
            height: 25,
            child: Icon(
              isSelected ? selectedIconData : iconData,
              color: isSelected ? const Color(0xFF104993) : Colors.grey,
            ),
          ),
          AutoSizeText(
            title,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? const Color(0xFF104993) : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(2),
        ],
      ),
    );
  }
}
