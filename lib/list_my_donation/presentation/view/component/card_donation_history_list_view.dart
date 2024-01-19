import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

class CardDonationHistoryListView extends StatelessWidget {
  const CardDonationHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyDonationsBloc, MyDonationsState>(
      builder: (context, state) {
        if (state is LoadingMyDonations) {
          context.read<MyDonationsBloc>().add(
                const MyDonationsEvent.fetchData(),
              );

          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is ErrorMyDonation) {
          return Center(
            child: Text(
              state.errorMessage.toString(),
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }

        if (state is SuccessMyDonations) {
          // ignore: prefer_is_empty
          if (state.listDonation?.length != 0) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.listDonation?.length,
              itemBuilder: (context, index) {
                return CardItemDonationHistory(
                  onPress: () => context.pushNamed(
                    Routes.detailMyDonation,
                    queryParameters: {
                      Constants.myDonationIdKey:
                          state.listDonation?[index].documentId,
                    },
                  ),
                  campaignTitle: state.listDonation?[index].campaignName,
                  campaignImage: CachedNetworkImage(
                    imageUrl: state.listDonation?[index].campaignImage ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const LinearProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  createdDonationAt: countDays(
                    state.listDonation?[index].createdAt,
                  ),
                  donationAmount: currencyFormatter(
                    state.listDonation?[index].amount ?? 0,
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text(
                'Tidak ada acara di kategori ini.',
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          }
        }

        // started state
        context.read<MyDonationsBloc>().add(
              const MyDonationsEvent.started(),
            );

        return Center(
          child: Text(
            'Network Error!',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      },
    );
  }
}
