import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class AmountNominalGroupButton extends StatelessWidget {
  const AmountNominalGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GroupButton<String>(
      buttons: [
        currencyFormatter(50000),
        currencyFormatter(100000),
        currencyFormatter(150000),
        currencyFormatter(200000),
      ],
      enableDeselect: true,
      maxSelected: 1,
      onSelected: (contentSelected, index, isSelected) =>
          context.read<AmountValueCubit>().updateAmountValue(
                contentSelected.replaceAll('Rp', '').replaceAll('.', ''),
              ),
      options: GroupButtonOptions(
        selectedColor: const Color(0xFF104993),
        unselectedColor: const Color(0xFFD9D9D9),
        buttonHeight: 45.h,
        buttonWidth: 170.w,
        borderRadius: BorderRadius.circular(100),
        selectedTextStyle: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        unselectedTextStyle: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
