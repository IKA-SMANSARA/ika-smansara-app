import 'package:flutter/material.dart';

class GlobalSectionHeader extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment? crossAxisAlignment;

  const GlobalSectionHeader({
    super.key,
    required this.title,
    this.titleStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignment!,
        children: [
          Text(
            title,
            style: titleStyle ??
                Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}