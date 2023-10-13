import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/payment_gateway/presentation/view/component/title_wording.dart';

class PaymentGatewayPortraitScreen extends StatelessWidget {
  PaymentGatewayPortraitScreen({super.key});

  final TextEditingController _amountNominal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AmountValueCubit(),
      child: Builder(
        builder: (context) {
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
                    const TitleWording(title: 'Pilih Nominal Donasi'),
                    const AmountNominalGroupButton(),
                    const TitleWording(title: 'Nominal Lainnya'),
                    AmountNominalTextField(amountNominal: _amountNominal),
                    Text(
                      'Minimal donasi Rp. 50.000',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    PaymentButton(
                      onPress: () => context.pushNamed(
                        Routes.paymentWindowWebView,
                        queryParameters: {
                          Constants.amountValueKey:
                              context.read<AmountValueCubit>().state,
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
