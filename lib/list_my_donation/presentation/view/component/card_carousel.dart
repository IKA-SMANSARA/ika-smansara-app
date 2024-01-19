import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/utils/extension.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyDonationsBloc, MyDonationsState>(
      builder: (context, state) {
        if (state is LoadingMyDonations) {
          context.read<MyDonationsBloc>().add(
                const MyDonationsEvent.fetchData(),
              );
          return const LinearProgressIndicator();
        }

        if (state is ErrorMyDonation) {
          return Center(
            child: Text(
              state.errorMessage.toString(),
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }

        if (state is SuccessMyDonations) {
          // ignore: prefer_is_empty
          if (state.listDonation?.length != 0) {
            return FlutterCarousel.builder(
              itemCount: state.listDonation?.length,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        state.listDonation?[itemIndex].campaignImage ?? '',
                    placeholder: (context, url) =>
                        const LinearProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                enableInfiniteScroll: enableInfiniteScrollStatus(
                  listLength: state.listDonation?.length ?? 0,
                ),
                showIndicator: false,
                viewportFraction: 1,
              ),
            );
          } else {
            return Assets.images.donate.image(
              fit: BoxFit.cover,
              height: 160,
              width: double.infinity,
            );
          }
        }

        // started state
        context.read<MyDonationsBloc>().add(const MyDonationsEvent.started());

        return Center(
          child: Text(
            'Network Error!',
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      },
    );
  }
}
