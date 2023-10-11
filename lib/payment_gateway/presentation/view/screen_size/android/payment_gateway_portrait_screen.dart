import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class PaymentGatewayPortraitScreen extends StatelessWidget {
  const PaymentGatewayPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          'Kirim Donasi',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Text(
                  'Pilih Nominal Donasi',
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => context.pushNamed(Routes.paymentWindowWebView),
                child: const Text('Open Window Payment'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
