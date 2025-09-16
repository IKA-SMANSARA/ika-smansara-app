import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class GlobalLoadingWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final String? message;

  const GlobalLoadingWidget({
    super.key,
    this.color = const Color(0xFFD52014),
    this.size = 50,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingAnimationWidget.inkDrop(
            color: color!,
            size: size!,
          ),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}