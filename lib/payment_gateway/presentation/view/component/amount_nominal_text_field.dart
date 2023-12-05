import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class AmountNominalTextField extends StatelessWidget {
  const AmountNominalTextField({required this.amountNominal, super.key});

  final TextEditingController amountNominal;

  @override
  Widget build(BuildContext context) {
    amountNominal.text = context.read<AmountValueCubit>().state;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
      ),
      child: TextField(
        onChanged: (amount) {
          if (amount == '') {
            context.read<AmountValueCubit>().updateAmountValue('0');
          } else {
            context.read<AmountValueCubit>().updateAmountValue(amount);
          }
        },
        style: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        controller: amountNominal,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 6.w),
          prefixText: 'Rp. ',
          prefixStyle: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFD9D9D9),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFD9D9D9),
            ),
          ),
          fillColor: const Color(0xFFD9D9D9),
          filled: true,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
