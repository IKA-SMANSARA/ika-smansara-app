import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:ika_smansara/common/utils/extension.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({
    required this.amount,
    required this.idCampaign,
    super.key,
  });

  final String idCampaign;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Informasi Pembayaran Donasi',
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(8.h),
        BlocBuilder<DetailCampaignBloc, DetailCampaignState>(
          builder: (context, state) {
            if (state is Loading) {
              context.read<DetailCampaignBloc>().add(
                    DetailCampaignEvent.fetchData(idCampaign),
                  );

              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is Error) {
              return Center(
                child: Text(
                  state.errorMessage.toString(),
                ),
              );
            }

            if (state is Success) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 4.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Acara',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            state.detailCampaignDocumentResponse.campaignName ??
                                '',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 4.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Donasi',
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF104993),
                          ),
                        ),
                        Text(
                          currencyFormatter(amount),
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            // started state
            context.read<DetailCampaignBloc>().add(
                  const DetailCampaignEvent.started(),
                );

            // default return
            return const Center(
              child: Text('Network Error!'),
            );
          },
        ),
      ],
    );
  }
}
