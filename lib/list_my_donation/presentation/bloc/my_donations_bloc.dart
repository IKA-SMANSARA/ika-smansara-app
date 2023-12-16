import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

part 'my_donations_bloc.freezed.dart';
part 'my_donations_event.dart';
part 'my_donations_state.dart';

class MyDonationsBloc extends Bloc<MyDonationsEvent, MyDonationsState> {
  MyDonationsBloc() : super(const InitialMyDonations()) {
    on<MyDonationsEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const MyDonationsState.loadingMyDOnations());
          },
          fetchData: () async {
            // fetching data
            await _getMyDonationUseCase().then(
              (value) => {
                value.fold(
                  (error) =>
                      emit(MyDonationsState.errorMyDonations(error.message)),
                  (response) => emit(
                    MyDonationsState.successMyDonations(
                      listDonation: response.documents,
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

  final _getMyDonationUseCase = getIt<GetMyDonationUseCase>();
}
