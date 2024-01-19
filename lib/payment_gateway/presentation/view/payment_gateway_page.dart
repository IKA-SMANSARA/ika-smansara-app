import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/payment_gateway/presentation/view/component/title_wording.dart';

class PaymentGatewayPage extends StatelessWidget {
  const PaymentGatewayPage({
    required this.idCampaign,
    required this.campaignName,
    required this.campaignImage,
    super.key,
  });

  final String idCampaign;
  final String campaignName;
  final String campaignImage;

  @override
  Widget build(BuildContext context) {
    final amountNominal = TextEditingController();

    return SafeArea(
      child: MultiBlocProvider(
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
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              body: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const Gap(8),
                    const Divider(
                      color: Color(0xFFD9D9D9),
                    ),
                    const Gap(8),
                    PaymentDetail(
                      idCampaign: idCampaign,
                      amount: state,
                    ),
                    const Gap(8),
                    const Divider(
                      color: Color(0xFFD9D9D9),
                    ),
                    const Gap(8),
                    PaymentButton(
                      onPress: () => context.pushNamed(
                        Routes.paymentWindowWebView,
                        queryParameters: {
                          Constants.amountValueKey: state,
                          Constants.idCampaignKey: idCampaign,
                          Constants.nameCampaignKey: campaignName,
                          Constants.imageCampaignKey: campaignImage,
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
