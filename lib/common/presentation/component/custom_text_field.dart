import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.textEditingController,
    this.onSubmitted,
    this.onEditingComplete,
    this.errorText,
    this.label,
    this.hint,
    this.textInputAction,
    this.textInputType,
    this.obscureText,
    this.passwordVisibilitiesIcon,
    super.key,
  });

  final TextEditingController? textEditingController;
  final void Function(String)? onSubmitted;
  final void Function()? onEditingComplete;
  final String? errorText;
  final String? label;
  final String? hint;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final bool? obscureText;
  final Widget? passwordVisibilitiesIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: const Color(0xff4880FF),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      style: GoogleFonts.inter(
        fontSize: 18.sp,
        color: const Color(0xff7A7C7A),
        fontWeight: FontWeight.w400,
      ),
      obscureText: obscureText ?? false,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        errorText: errorText,
        label: Text(
          label ?? '',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff7A7C7A),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 6.w),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xff4880FF),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xffff486a),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xffBBBCBC),
          ),
        ),
        fillColor: const Color(0xffF8FAFB),
        filled: true,
        hintText: hint ?? '',
        hintStyle: GoogleFonts.inter(
          fontSize: 18.sp,
          color: const Color(0xffBBBCBC),
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: passwordVisibilitiesIcon,
      ),
    );
  }
}
