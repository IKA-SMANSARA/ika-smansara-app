import 'package:flutter/material.dart';

class NamedNavBarItemWidget extends BottomNavigationBarItem {
  NamedNavBarItemWidget({
    required this.initLocation,
    required super.icon,
    super.label,
  });

  final String initLocation;
}
