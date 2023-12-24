import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/detail_campaign/presentation/bloc/list_backer_bloc.dart';

class DetailCampaignPortraitScreen extends StatelessWidget {
  const DetailCampaignPortraitScreen({required this.idCampaign, super.key});

  final String idCampaign;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DetailCampaignBloc(),
        ),
        BlocProvider(
          create: (context) => ListBackerBloc(),
        ),
      ],
      child: BlocBuilder<DetailCampaignBloc, DetailCampaignState>(
        builder: (context, state) {
          if (state is Loading) {
            context.read<DetailCampaignBloc>().add(
                  DetailCampaignEvent.fetchData(idCampaign),
                );

            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFF104993),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
                title: Text(
                  'Detail Campaign',
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state is Error) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFF104993),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
                title: Text(
                  'Detail Campaign',
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              body: Center(
                child: Text(
                  state.errorMessage.toString(),
                ),
              ),
            );
          }

          if (state is Success) {
            return MainContent(
              detailCampaignDocumentResponse:
                  state.detailCampaignDocumentResponse,
            );
          }

          // started state
          context.read<DetailCampaignBloc>().add(
                const DetailCampaignEvent.started(),
              );

          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF104993),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
              title: Text(
                'Detail Campaign',
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            body: const Center(
              child: Text('Network Error!'),
            ),
          );
        },
      ),
    );
  }
}
