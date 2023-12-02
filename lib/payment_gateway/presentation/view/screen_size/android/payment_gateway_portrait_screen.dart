import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/payment_gateway/presentation/view/component/title_wording.dart';

class PaymentGatewayPortraitScreen extends StatelessWidget {
  const PaymentGatewayPortraitScreen({required this.idCampaign, super.key});

  final String idCampaign;

  @override
  Widget build(BuildContext context) {
    final amountNominal = TextEditingController();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AmountValueCubit(),
        ),
        BlocProvider(
          create: (_) => DetailCampaignBloc(),
        ),
      ],
      child: BlocBuilder<AmountValueCubit, String>(
        builder: (context, state) {
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
              child: Column(
                children: [
                  const TitleWording(title: 'Pilih Nominal Donasi'),
                  const AmountNominalGroupButton(),
                  const TitleWording(title: 'Nominal Lainnya'),
                  AmountNominalTextField(amountNominal: amountNominal),
                  Text(
                    'Minimal donasi Rp. 50.000',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Gap(8.h),
                  const Divider(
                    color: Color(0xFFD9D9D9),
                  ),
                  Gap(8.h),
                  PaymentDetail(
                    idCampaign: idCampaign,
                    amount: state,
                  ),
                  Gap(8.h),
                  const Divider(
                    color: Color(0xFFD9D9D9),
                  ),
                  Gap(8.h),
                  PaymentButton(
                    onPress: () => context.pushNamed(
                      Routes.paymentWindowWebView,
                      queryParameters: {
                        Constants.amountValueKey: state,
                        Constants.idCampaignKey: idCampaign,
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
