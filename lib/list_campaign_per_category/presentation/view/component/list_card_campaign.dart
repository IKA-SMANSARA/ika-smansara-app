import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

class ListCardCampaign extends StatelessWidget {
  const ListCardCampaign({
    required this.categoryName,
    super.key,
  });

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
            child: CircularProgressIndicator(),
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
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.listCampaigns?.length,
              itemBuilder: (context, index) {
                return CardItemCampaign(
                  onPress: () => context.pushNamed(
                    Routes.detailCampaign,
                    queryParameters: {
                      Constants.idCampaignKey: state.listCampaigns?[index].id,
                    },
                  ),
                  campaignTitle: state.listCampaigns?[index].campaignName,
                  campaignImage: CachedNetworkImage(
                    imageUrl: state.listCampaigns?[index].photoThumbnail ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const LinearProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  donationAmount: currencyFormatter(
                    state.listCampaigns?[index].currentAmount ?? 0,
                  ),
                  donationDuration: getRemainingDays(
                    state.listCampaigns?[index].dateEndCampaign,
                  ),
                  campaignProgressIndicator: getCampaignProgressIndicatorValue(
                    state.listCampaigns?[index].goalAmount ?? 0,
                    state.listCampaigns?[index].currentAmount ?? 0,
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
