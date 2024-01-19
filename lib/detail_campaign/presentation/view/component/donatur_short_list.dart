import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/detail_campaign/presentation/bloc/list_backer_bloc.dart';

class DonaturShortList extends StatelessWidget {
  const DonaturShortList({
    required this.documentId,
    required this.backerCount,
    super.key,
  });

  final String? documentId;
  final int backerCount;

  @override
  Widget build(BuildContext context) {
    if (backerCount != 0) {
      return BlocBuilder<ListBackerBloc, ListBackerState>(
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
            return SizedBox(
              height: 200,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.listBacker.listBacker?.length ?? 0,
                itemBuilder: (context, index) {
                  return DonaturCard(
                    name: state.listBacker.listBacker?[index].userName ?? '-',
                    amount: state.listBacker.listBacker?[index].amount ?? 0,
                    createdAt:
                        state.listBacker.listBacker?[index].createdAt ?? '',
                  );
                },
              ),
            );
          }

          context.read<ListBackerBloc>().add(const ListBackerEvent.started());

          return const Center(
            child: Text('NETWORK ERROR'),
          );
        },
      );
    } else {
      return const Center(
        child: Text('BELUM ADA YANG BERDONASI'),
      );
    }
  }
}
