import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class GlobalAppBarActionButton extends ConsumerWidget {
  final String routeName;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final EdgeInsetsGeometry? margin;

  const GlobalAppBarActionButton({
    super.key,
    required this.routeName,
    this.icon = Icons.account_circle,
    this.backgroundColor = const Color(0xFF104993),
    this.iconColor = Colors.white,
    this.size = 28,
    this.margin = const EdgeInsets.only(right: 16),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: margin,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              backgroundColor!,
              Colors.white,
            ],
            stops: const [0.3, 1.0],
          ),
        ),
        child: InkWell(
          onTap: () => ref.read(routerProvider).pushNamed(routeName),
          borderRadius: BorderRadius.circular(50),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Icon(
              icon,
              color: iconColor,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}