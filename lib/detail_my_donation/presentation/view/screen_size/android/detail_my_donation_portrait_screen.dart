import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';

class DetailMyDonationPortraitScreen extends StatelessWidget {
  const DetailMyDonationPortraitScreen({required this.myDonationId, super.key});

  final String? myDonationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          'Donasi',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: BackButton(
          onPressed: () {
            context.go(Routes.home);
          },
        ),
      ),
      body: BlocProvider(
        create: (_) => DetailMyDonationBloc(),
        child: BlocBuilder<DetailMyDonationBloc, DetailMyDonationState>(
          builder: (context, state) {
            if (state is Loading) {
              context.read<DetailMyDonationBloc>().add(
                    DetailMyDonationEvent.fetchData(myDonationId),
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
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: Text(
                          'Terima kasih atas donasi anda.',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: Text(
                          state.detailMyDonationDocumentResponse.campaignName ??
                              '',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: CachedNetworkImage(
                          imageUrl: state.detailMyDonationDocumentResponse
                                  .campaignImage ??
                              '',
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const LinearProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: Container(
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: ContentPageMyDonation(
                            state.detailMyDonationDocumentResponse,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: ButtonDonateAgain(
                          state.detailMyDonationDocumentResponse.campaignId ??
                              '',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            // started state
            context.read<DetailMyDonationBloc>().add(
                  const DetailMyDonationEvent.started(),
                );

            return const Center(
              child: Text('NO NETWORK'),
            );
          },
        ),
      ),
    );
  }
}
