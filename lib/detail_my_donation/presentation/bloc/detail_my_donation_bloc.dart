import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';

part 'detail_my_donation_bloc.freezed.dart';
part 'detail_my_donation_event.dart';
part 'detail_my_donation_state.dart';

class DetailMyDonationBloc
    extends Bloc<DetailMyDonationEvent, DetailMyDonationState> {
  DetailMyDonationBloc() : super(const Initial()) {
    on<DetailMyDonationEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const DetailMyDonationState.loading());
          },
          fetchData: (String? documentId) async {
            // fetching data
            await _getDetailMyDonationUseCase(documentId).then(
              (value) => {
                value.fold(
                  (error) => emit(DetailMyDonationState.error(error.message)),
                  (response) => emit(
                    DetailMyDonationState.success(response),
                  ),
                ),
              },
            );
          },
        );
      },
    );
  }

  final _getDetailMyDonationUseCase = getIt<GetDetailMyDonationUseCase>();
}
