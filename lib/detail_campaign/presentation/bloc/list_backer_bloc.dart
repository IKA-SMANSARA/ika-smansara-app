import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/detail_campaign/domain/use_case/get_list_backer_use_case/get_list_backer_use_case.dart';

part 'list_backer_event.dart';
part 'list_backer_state.dart';
part 'list_backer_bloc.freezed.dart';

class ListBackerBloc extends Bloc<ListBackerEvent, ListBackerState> {
  ListBackerBloc() : super(const InitialListBacker()) {
    on<ListBackerEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const ListBackerState.loadingListBacker());
          },
          fetchData: (String? documentId) async {
            // fetching data
            await _getListBackerUseCase(documentId).then(
              (value) => {
                value.fold(
                  (error) =>
                      emit(ListBackerState.errorErrorListBacker(error.message)),
                  (response) => emit(
                    ListBackerState.successListBacker(
                      response.listBacker ?? [],
                    ),
                  ),
                ),
              },
            );
          },
        );
      },
    );
  }

  final _getListBackerUseCase = getIt<GetListBackerUseCase>();
}
