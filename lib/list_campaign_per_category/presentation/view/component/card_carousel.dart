import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/utils/extension.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({required this.categoryName, super.key});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CampaignsBloc, CampaignsState>(
      builder: (context, state) {
        if (state is LoadingCampaign) {
          context.read<CampaignsBloc>().add(
                CampaignsEvent.fetchData(categoryName),
              );

          return const Center(
            child: Text(''),
          );
        }

        if (state is ErrorCampaign) {
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

        if (state is SuccessCampaign) {
          // ignore: prefer_is_empty
          if (state.listCampaigns?.length != 0) {
            return FlutterCarousel.builder(
              itemCount: state.listCampaigns?.length,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        state.listCampaigns?[itemIndex].photoThumbnail ?? '',
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
                  listLength: state.listCampaigns?.length ?? 0,
                ),
                showIndicator: false,
                viewportFraction: 1,
              ),
            );
          } else {
            return Assets.images.deathCub.image(
              fit: BoxFit.cover,
              height: 160.h,
              width: double.infinity,
            );
          }
        }

        // started state
        context.read<CampaignsBloc>().add(
              const CampaignsEvent.started(),
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
