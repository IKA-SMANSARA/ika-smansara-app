import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GlobalPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? disabledColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const GlobalPrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
    this.width = double.infinity,
    this.height = 50,
    this.backgroundColor = const Color(0xFF104993),
    this.disabledColor = Colors.grey,
    this.textStyle,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? backgroundColor : disabledColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          elevation: 0,
          padding: padding,
        ),
        child: AutoSizeText(
          text,
          style: textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
          maxLines: 1,
          minFontSize: 14,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}