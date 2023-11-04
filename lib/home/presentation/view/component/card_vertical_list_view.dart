import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';

class CardVerticalListView extends StatelessWidget {
  const CardVerticalListView({
    required this.listTitle,
    required this.buttonTitle,
    super.key,
  });

  final String? listTitle;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  listTitle ?? '',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  onTap: () => context.pushNamed(
                    Routes.listCampaignPerCategory,
                    queryParameters: {
                      Constants.categoryNameKey: listTitle,
                    },
                  ),
                  child: Text(
                    buttonTitle ?? '',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF104993),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
            ),
            child: SizedBox(
              height: 255.h,
              child: BlocBuilder<CampaignsBloc, CampaignsState>(
                builder: (context, state) {
                  if (state is LoadingCampaigns) {
                    context.read<CampaignsBloc>().add(
                          const CampaignsEvent.fetchData(),
                        );

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is ErrorCampaigns) {
                    return Center(child: Text(state.errorMessage.toString()));
                  }

                  if (state is SuccessCampaigns) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.listCampaigns?.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: CardItemCampaign(
                            onPress: () => context.pushNamed(
                              Routes.detailCampaign,
                              queryParameters: {
                                Constants.idCampaignKey:
                                    state.listCampaigns?[index].id,
                              },
                            ),
                            campaignTitle:
                                state.listCampaigns?[index].campaignName,
                            campaignDonationCollected: state
                                .listCampaigns?[index].currentAmount
                                .toString(),
                            campaignDuration: '5 hari lagi',
                            campaignProgressIndicator: 0.65,
                            campaignImage: Image.network(
                              state.listCampaigns?[index].photoThumbnail ?? '',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }

                  // started state
                  context.read<CampaignsBloc>().add(
                        const CampaignsEvent.started(),
                      );

                  return const Center(
                    child: Text('Network Error!'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
