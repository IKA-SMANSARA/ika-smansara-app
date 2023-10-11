import 'package:flutter/material.dart';

class NamedNavBarItemWidget extends BottomNavigationBarItem {
  NamedNavBarItemWidget({
    required this.initLocation,
    required super.icon,
    required super.activeIcon,
    super.tooltip,
    super.label,
  });

  final String initLocation;
}
