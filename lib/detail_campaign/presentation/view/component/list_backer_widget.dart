import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/detail_campaign/presentation/bloc/list_backer_bloc.dart';
import 'package:ika_smansara/detail_campaign/presentation/view/component/donatur_card.dart';

class ListBackerWidget extends StatelessWidget {
  const ListBackerWidget({
    required this.backerCount,
    required this.documentId,
    super.key,
  });

  final String? backerCount;
  final String? documentId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          'Donatur ($backerCount)',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: BlocProvider(
        create: (_) => ListBackerBloc(),
        child: BlocBuilder<ListBackerBloc, ListBackerState>(
          builder: (context, state) {
            if (state is LoadingListBacker) {
              context.read<ListBackerBloc>().add(
                    ListBackerEvent.fetchData(documentId),
                  );
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ErrorListBacker) {
              return Center(
                child: Text(state.errorMessage ?? 'NETWORK ERROR'),
              );
            }

            if (state is SuccessListBacker) {
              return ListView.builder(
                itemCount: state.listBacker.length,
                itemBuilder: (context, index) {
                  return DonaturCard(
                    name: state.listBacker[index].userName ?? '-',
                    amount: state.listBacker[index].amount ?? 0,
                    createdAt: state.listBacker[index].createdAt ?? '',
                  );
                },
              );
            }

            context.read<ListBackerBloc>().add(const ListBackerEvent.started());

            return const Center(
              child: Text('NETWORK ERROR'),
            );
          },
        ),
      ),
    );
  }
}
